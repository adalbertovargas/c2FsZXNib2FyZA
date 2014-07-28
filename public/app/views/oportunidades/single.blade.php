@extends('masterlogged')
@section('header')

<a href="{{url('/')}}">Regresar</a>

@stop

@section('content')

<div class="row">
          <div class="col-xs-4 bg-inverse padder-v">
            <h4>{{{$oportunidad->nombre}}}</h4>
            <small>{{$oportunidad->detalle}}</small>
          </div>
          <div class="col-xs-4 bg-info padder-v">
            <h4>${{number_format($oportunidad->cantidad,0)}}</h4>
            <small>Monto de la Venta</small><br> 
          </div>
          <div class="col-xs-4 bg-primary padder-v">
            <h4>{{date("F j, Y",strtotime($oportunidad->fecha_inicio))}}</h4>
            <small>Fecha de Inicio</small><br>         
          </div>


@if($oportunidad->estado_actual!=4)
          <div class="btn-group btn-group-justified">
                  <a href="{{url('oportunidades/'.$oportunidad->id.'/editar')}}" class="btn">Modificar</a>
                </div>
@endif

</div>
<br>
<!--
<div class="col-lg-6"> 
  <section class="panel text-center">
    <header class="panel-heading bg-white">Detalle de la Oportunidad</header>


<div class="panel-body">
                  <a class="btn btn-circle btn-twitter btn-lg"><i class="{{icono_oportunidad($oportunidad->estado_actual)}}"></i></a>
                  <h4> Paso {{$oportunidad->estado_actual}}</h4>
                  <div class="line m-l m-r"></div>
                  <h4 class="text-success"><strong>${{number_format($oportunidad->cantidad,2)}}</strong></h4>
                    --><!--

                  <small class="pull-left">Fecha de Creación: {{$oportunidad->fecha_inicio}} </small>
                  <small class="pull-right">Ultimo Cambio: {{$oportunidad->updated_at}} </small>
                  <br><br><br>
  <p>
      @if($oportunidad->usuario)
       {{--link_to('oportunidades/usuarios/' . $oportunidad->usuario->nombre, $oportunidad->usuario->nombre)--}}
      @endif
 

              <a href="{{url('oportunidades/'.$oportunidad->id.'/editar')}}" class="btn btn-primary pull-left">
    Editar
  </a>

              <a href="{{url('oportunidades/'.$oportunidad->id.'/eliminar')}}" class="btn btn-danger pull-right">
    Eliminar / Ocultar
  </a>
 </p>

 </div>
</section>
</div>-->

@if($oportunidad->estado_actual!=4)

<div class="col-lg-12"> 
  <section class="panel text-center">
    <header class="panel-heading bg-white">Mover Oportunidad</header>


    <div class="panel-body" style="white-space:normal">

      <form class="form-horizontal" action="{{'../cambios/'.$oportunidad->id}}" method="post" data-validate="parsley">  

        <input type="hidden" value="{{$oportunidad->estado_actual}}" name="estado_antes"/>
        <input type="hidden" id="estado_actual" name="estado_actual"/>

        <!--<p> <small class="text-muted">1. Selecciona el paso al que quieres cambiar.</small> 
        </p>-->

        <p> {{--Parrafo de los botones--}}
    <a href="javascript:cambiapaso(0);" id="paso0" class="{{marca_paso2($oportunidad,0)}}">
      <i class="fa fa-phone"></i>P/C
    </a> 

    <a href="javascript:cambiapaso(1);" id="paso1" class="{{marca_paso2($oportunidad,1)}}">
      <i class="fa fa-search"></i>Paso 1 
    </a> 

    <a href="javascript:cambiapaso(2);" id="paso2" class="{{marca_paso2($oportunidad,2)}}">
      <i class="fa fa-desktop"></i>Paso 2
    </a> 


    <a href="javascript:cambiapaso(3);" id="paso3" class="{{marca_paso2($oportunidad,3)}}">
      <i class="fa fa-thumbs-up"></i>Paso 3
    </a> 

    <a href="javascript:cambiapaso(4);" id="paso4" class="{{marca_paso2($oportunidad,4)}}">
      <i class="fa fa-check"></i>Cierre
    </a> 
  </p>

        <p> <small class="text-muted">Fecha en que se realizó el cambio.</small>
          <input class="input-sm form-control datepicker" name="fecha_cambio" size="16" type="text" value="{{date('Y-m-d')}}" data-date-format="yyyy-mm-dd">
          
        </p>

       <!-- <p> <small class="text-muted">3. Agrega un comentario sobre este cambio.</small>
          <input type="text" name="comentario" placeholder="Detalle de los motivos del cambio." data-required="true" class="form-control parsley-validated">
        </p>-->

      {{Form::submit("Mover", array("class"=>"btn btn-primary","id"=>"moverbtn"))}}




     

   </div>
 </form>

  </section> 
</div>

@endif




<div class="col-lg-12"> 
  <section class="panel text-center">
    <header class="panel-heading bg-white">Agregar un Comentario</header>
      <div class="panel-body">
         <form class="form-horizontal" name="notaform" action="{{'../cambios/'.$oportunidad->id.'/nota'}}" method="post" data-validate="parsley">  

          <div class="form-group">

          
       <div class="col-sm-5">
          <input type="text" name="comentario" placeholder="Escribe aquí tu comentario" data-required="true" class="form-control parsley-validated">
        </div>
       <label class="col-sm-1">Fecha:</label>

        <div class="col-sm-2">
          <input class="form-control datepicker" name="fecha_cambio"  type="text" value="{{date('Y-m-d')}}" data-date-format="yyyy-mm-dd">                    
          
        </div>   
        <div class="col-sm-1">
              {{Form::submit("Agregar", array("class"=>"btn btn-primary"))}}
        </div>

            </div>
         </form>
      </div>
  </section>
</div>



<section class="main">
      <div class="padder m-t m-b">
        <div class="timeline">
            {{getHistory($oportunidad)}}
          <div class="timeline-footer"><a href="#"><i class="fa fa-plus time-icon inline-block bg-default"></i></a>
          </div>
        </div>
      </div>
    </section>


<p>
  <a href="{{url('oportunidades/'.$oportunidad->id.'/eliminar')}}" class="btn btn-danger pull-right">
    Eliminar Oportunidad
  </a>
 </p>



@stop