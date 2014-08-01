@extends('masterlogged')
@section('header')

<?php 
$uid=Auth::user()->id;

?>

  @if(isset($usuario))
    {{link_to('/', 'Back to the overview')}}
  @endif
<h2>
    @if(isset($usuario)) {{$usuario->nombre}} @endif Mis Oportunidades

  <!--<a href="{{url('oportunidades/crear')}}" class="btn btn-primary pull-right">
    Agregar Oportunidad
  </a>-->
</h2>
@stop
@section('content')

@if(Auth::check())
    
  <section id="content">
    <section class="main padder">
      <div class="clearfix">


          <section class="panel">
            <div class="panel-body">
              <!--Total {{{oportunidades_activas($uid)}}} Oportunidades, {{{oportunidades_cerradas($uid)}}} Cerradas-->
              <span class="badge bg-danger pull-right">Ciclo de Ventas = 
                @if(ciclo_ventas($uid)>0)
                {{{ciclo_ventas($uid)}}} dias
                @else
                --
                @endif

              </span>
            </div>
          </section>
        

      <div class="col-xs-20">   
      <section class="panel" style="background:#eff1e6">
              <div class="panel-body text-center">
                  <strong class="h4">P/C</strong><br> 
                  <span class="badge bg-info">{{--oportunidades_paso($uid,0)--}}</span>
                  <br>
                  <strong>${{{total_paso($uid,0)}}}</strong>
             </div>
      </section>
      </div>

      <div class="col-xs-20">   
      <section class="panel" style="background:#fff9d6">
              <div class="panel-body text-center">                  
                  <strong class="h4">Paso 1</strong><br> 
                  <span class="badge bg-info">{{{oportunidades_paso($uid,1)}}}%</span>
                  <br>
                  <strong>${{{total_paso($uid,1)}}}</strong>
             </div>
      </section>
      </div>

      <div class="col-xs-20">   
      <section class="panel" style="background:#fff9d6">
              <div class="panel-body text-center">                  
                  <strong class="h4">Paso 2</strong><br> 
                  <span class="badge bg-info">{{{oportunidades_paso($uid,2)}}}%</span>
                  <br>
                  <strong>${{{total_paso($uid,2)}}}</strong>
           </div>
      </section>
      </div>

      <div class="col-xs-20">   
      <section class="panel" style="background:#fff9d6">
              <div class="panel-body text-center">
                  <strong class="h4">Paso 3</strong><br> 
                  <span class="badge bg-info">{{{oportunidades_paso($uid,3)}}}%</span>
                  <br>
                  <strong>${{{total_paso($uid,3)}}}</strong>
             </div>
      </section>
      </div>

      <div class="col-xs-20">   
      <section class="panel" style="background:#9effbc">
              <div class="panel-body text-center">
                  <strong class="h4">Cierre</strong><br> 
                  <span class="badge bg-success">{{--porcentaje_cierre($uid)--}}</span>
                  <br>
                  <strong>${{{total_paso($uid,4)}}}</strong>
             </div>
      </section>
      </div>



<?php 

$contador=-1;
$contador2=-1; 

?>

  @foreach($oportunidades as $oportunidad)
      @if($oportunidad->estado_actual!=$contador)
      {{--En caso de ser el Header de cada Columna--}}


      <?php 

        $contador=$oportunidad->estado_actual;
        $contador2++;

      ?>

      {{--INIT Si no hay elementos en la columna--}}

      @while($contador>$contador2)
      </div>
      <div class="col-xs-20" name="paso{{$contador2}}" >
      <? $contador2++; 
         //echo "(".$oportunidad->estado_actual.",".$contador.",".$contador2.")";
      ?>
      @endwhile


      {{--END no hay elementos en la columna--}}

       </div>
      <div class="col-xs-20" name="paso{{$contador2}}" >



    {{--Primer elemento despues del Header--}}



      <section class="panel"    
        @if($contador==0) 
        style="background:#e9e5e7" 
        @elseif($contador==4) 
        style="background:#e8f1eb" 
        @endif
      >


      <div class="panel-body text-center">

          {{--INDICADOR SI HA SUPERADO EL TIEMPO PROMEDIO--}}
          {{--SI ES PASO 4--}}
          @if($contador==4)
          <i class="fa fa-check" style="color:green"></i>
          @endif
      
      <a href="{{url('oportunidades/'.$oportunidad->id)}}">
        <strong> {{{$oportunidad->nombre}}} </strong>
        <br> 
        ${{{number_format($oportunidad->cantidad)}}}
      </a>
        <br>
          @if(ciclo_ventas($uid) >0 and cuenta_dias($oportunidad->fecha_inicio)>ciclo_ventas($uid) and $contador!=4)
          <i class="fa fa-clock-o" style="color:red"></i>
          @endif

          @if($contador<4)
          <small>{{{cuenta_dias($oportunidad->fecha_inicio)}}}</small><br>
          @elseif($contador==4)
          <small>{{{nicetime($oportunidad->fecha_final)}}}</small><br>
          @endif


      </div>
      </section>
    {{--Termina primer elemento despues del Header--}}

      @else
      {{--Si NO es el Header de cada Columna--}} 

        {{--Elemento que pertenece a una columna--}}


      <section class="panel"    
        @if($contador==0) 
        style="background:#e9e5e7" 
        @elseif($contador==4) 
        style="background:#e8f1eb" 
        @endif
      >


        <div class="panel-body text-center">
<span  data-toggle="popover" data-html="true" data-placement="top" data-content="{{{$oportunidad->detalle}}}" title="" data-original-title='<button type="button" class="close pull-right" data-dismiss="popover"><i class="fa fa-times"></i></button>Detalle'>
          {{--INDICADOR SI HA SUPERADO EL TIEMPO PROMEDIO--}}

          {{--SI ES PASO 4--}}
          @if($contador==4)
          <i class="fa fa-check" style="color:green"></i>
          @endif

      <a href="{{url('oportunidades/'.$oportunidad->id)}}">
        <strong> {{{$oportunidad->nombre}}} </strong>
        <br> 
          ${{{number_format($oportunidad->cantidad)}}}
        </a>
        <br>

          @if(ciclo_ventas($uid) >0 and cuenta_dias($oportunidad->fecha_inicio)>ciclo_ventas($uid) and $contador!=4)
          <i class="fa fa-clock-o" style="color:red"></i>
          @endif

          @if($contador<4)
          <small>{{{cuenta_dias($oportunidad->fecha_inicio)}}}</small><br>
          @elseif($contador==4)
          <small>{{{nicetime($oportunidad->fecha_final)}}}</small><br>
          @endif

            </span>
        </div>
        </section>
         
        {{--Termina elemento que pertenece a una columna--}}

      @endif
  @endforeach
      </div>
    </section>
  </section>


<br>


          @else 
            No hay nada que mostrar
          @endif
          

@stop

