@extends('masterlogged')
@section('header')

<?php 
$uid=Auth::user()->id;

?>

<h2>
@if($method=='post')
	Nueva oportunidad
	@elseif ($method =='delete') 
		¿Estas seguro de eliminar <strong>{{$oportunidad->nombre}}</strong>?
	@else
		Modificar <strong>{{$oportunidad->nombre}}</strong>
	@endif

@stop

</h2>

@section('content')

<div class="col-lg-12"> 
  <section class="panel text-center">


{{Form::model($oportunidad,array('method'=>$method,'class'=>'form-horizontal','url'=>'oportunidades/'.$oportunidad->id))}}



@unless($method=='delete')

        @if($method=='post')
            <header class="panel-heading bg-info">Agregar Nueva Oportunidad</header>
              <div class="panel-body">
        @else
            <header class="panel-heading bg-info">Modificar Oportunidad</header>
              <div class="panel-body">
        @endif


<div class="form-group">
	{{Form::label('Nombre','',array('class'=>'col-lg-3 control-label'))}}
     <div class="col-lg-8">
	{{Form::text('nombre',$oportunidad->nombre,array('class'=>'input-sm form-control'))}}
</div></div>

<div class="form-group">
  {{Form::label('Detalle','',array('class'=>'col-lg-3 control-label'))}}
  <div class="col-lg-8">
  {{Form::text('detalle',$oportunidad->detalle,array('class'=>'form-control'))}}
</div></div>

@if($method=='post')
<div class="form-group">

      {{Form::label('Fecha Inicio','',array('class'=>'col-lg-3 control-label'))}}
      <div class="col-lg-8">
      {{Form::text('fecha_inicio',date('Y-m-d'),array('class'=>'input-sm form-control datepicker','data-date-format'=>'yyyy-mm-dd'))}}
</div></div>
@endif


<div class="form-group">
  {{Form::label('Monto de la Venta','',array('class'=>'col-lg-3 control-label'))}}
  <div class="col-lg-8">
  {{Form::text('cantidad',$oportunidad->cantidad,array('id'=>'cantidad','class'=>'form-control'))}}
</div></div>


@if($method=='post')

     <input type="hidden" id="estado_actual" name="estado_actual"/>
       <input type="hidden" name="usuario_id" value="{{$uid}}"/>

<div class="col-lg-12">
      <p style="white-space: initial;"> <small class="text-muted">1. Selecciona el paso al que quieres cambiar.</small> </p>
       

        <p> {{--Parrafo de los botones--}}
    <a href="javascript:creapaso(0);" id="paso0" class="btn btn-success btn-circle">
      <i class="fa fa-phone"></i>
      P/C
      <br>
      <small>Obtener una cita</small>
    </a> 

    <a href="javascript:creapaso(1);" id="paso1" class="btn btn-circle">
      <i class="fa fa-search"></i>
      Paso 1 <br>
     <small>Investigación</small>

    <a href="javascript:creapaso(2);" id="paso2" class="btn btn-circle">
      <i class="fa fa-desktop"></i>Paso 2
      <br>
     <small>Propuesta</small>
    </a> 


    <a href="javascript:creapaso(3);" id="paso3" class="btn btn-circle">
      <i class="fa fa-thumbs-up"></i>Paso 3
      <br>
      <small>Aceptación</small>
    </a> 

    <a href="javascript:creapaso(4);" id="paso4" class="btn btn-circle">
      <i class="fa fa-check"></i>
      Cierre
      <br>
      <small>Conclusión</small>
    </a> 
  </p></div>


@endif

<div class="col-lg-12">
  @if($method=='post')
    {{Form::submit("Crear Oportunidad", array("class"=>"btn btn-primary"))}}
  @else
    {{Form::submit("Modificar", array("class"=>"btn btn-primary"))}}
  @endif

</div>


@else

    <header class="panel-heading bg-info">No podrás ver más la información de esta oportunidad.</header>
      <div class="panel-body">
    {{Form::submit("Eliminar", array("class"=>"btn btn-danger"))}}
  @endif




  
  {{Form::close()}}

      </div>
  </section>
</div>

@stop
