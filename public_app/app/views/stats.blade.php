@extends('masterstats')
@section('header')

<?php 
$uid=Auth::user()->id;

?>

@section('content')

<h2>Mis Estadísticas</h2>
<div class="row">
          <div class="col-xs-4 bg-white padder-v">
            <div class="h3">{{{ciclo_ventas($uid)}}} dias</div>
            Ciclo de Ventas
          </div>
          <div class="col-xs-4 bg-info padder-v">
            <div class="h3">${{ventas_promedio($uid)}}</div>
            Venta Promedio
          </div>
          <div class="col-xs-4 bg-primary padder-v">
            <div class="h3">{{oportunidades_totales($uid)}}</div>
            Total Oportunidades
          </div>
</div>
        <br>
<div class="row">
            <!-- easypiechart -->

                        <div class="col-lg-6">
              <section class="panel">
                <header class="panel-heading bg-white">
                  <div class="text-center h5"><strong>PC/Prospecto</strong></div>
                </header>
                <div class="panel-body pull-in text-center">
                  <div class="inline">
                    <div class="easypiechart easyPieChart" data-percent="{{pc_prospecto($uid)}}" data-bar-color="#576879" style="width: 160px; height: 160px; line-height: 160px;">
                      <span class="h2" style="margin-left:10px;margin-top:10px;display:inline-block">{{pc_prospecto($uid)}}</span>%
                      <div class="easypie-text text-muted">Oportunidades</div>
                    <canvas width="160" height="160"></canvas></div>
                  </div>
                </div>
              </section>
            </div>

            <div class="col-lg-6">              
              <section class="panel">
                <header class="panel-heading bg-white">
                  <div class="text-center h5"><strong>Proporcion Ventas</strong></div>
                </header>
                <div class="panel-body pull-in text-center">
                  <div class="inline">
                    <div class="easypiechart easyPieChart" data-percent="{{porcentaje_cierre($uid)}}" style="width: 180px; height: 180px; line-height: 180px;">
                      <span class="h2" style="margin-left:10px;margin-top:10px;display:inline-block">

                        @if(proporcion_ventas($uid)>0)
                        {{proporcion_ventas($uid)}}:1</span>&nbsp;

                        @else
                        -:-</span>&nbsp;

                        @endif
                      <div class="easypie-text">Oportunidades:Cierre</button></div>
                   <canvas width="180" height="180"></canvas>
                  </div>
                  </div>
                </div>
              </section>
            </div>

                       

            <!-- easypiechart end-->
          </div>
          
          
          <div class="row">
        <div class="col-md-12">
          <section class="panel">
            <header class="panel-heading">
             <div class="text-center h5">Historial de Oportunidades por columna </div>           </header>
            <div>
              <table class="table table-striped m-b-none text-small">
                <thead>
                  <tr>
                    <th>Paso</th>
                    <th>No. de Oportunidades</th>                    
                                     </tr>
                </thead>
                <tbody>
                  <tr> 
                  <td>Paso 1 </td>
                  <td><span class="badge bg-info">{{oportunidades_paso_totales($uid,1)}}  {{--oportunidades_cerradas_paso($uid,1)--}}</span></td>
                 
                  </tr>    
                  <tr> 
                  <td>Paso 2 </td>
                  <td><span class="badge bg-info"> {{oportunidades_paso_totales($uid,2)}}  {{--oportunidades_cerradas_paso($uid,2)--}}</span></td>
                 
                  </tr>  
                  <tr> 
                  <td>Paso 3</td>
                  <td><span class="badge bg-info"> {{oportunidades_paso_totales($uid,3)}}  {{--oportunidades_cerradas_paso($uid,3)--}}</span></td>
                 
                  </tr>  
                  <tr> 
                  <td>Cierre </td>
                  <td><span class="badge bg-success">{{oportunidades_paso_totales($uid,4)}}  {{--oportunidades_cerradas_paso($uid,3)--}}</span></td>
                 
                  </tr>                 
     
                </tbody>
              </table>
            </div>
          </section>
        </div>
        
      </div>
          
          



@stop


  <script src="{{asset('src/js/jquery.min.js')}}"></script>
  <!-- Bootstrap -->
  <script src="{{asset('src/js/bootstrap.js')}}"></script>
  <!-- app -->
  <script src="{{asset('src/js/app.js')}}"></script>
  <script src="{{asset('src/js/app.plugin.js')}}"></script>
  <script src="{{asset('src/js/app.data.js')}}"></script> 
  <!-- Sparkline Chart -->
  <script src="{{asset('src/js/charts/sparkline/jquery.sparkline.min.js')}}"></script>
  <!-- Easy Pie Chart -->
  <script src="{{asset('src/js/charts/easypiechart/jquery.easy-pie-chart.js')}}"></script>
  <!-- Flot -->
  <script src="{{asset('src/js/charts/flot/jquery.flot.min.js')}}"></script>
  <script src="{{asset('src/js/charts/flot/jquery.flot.tooltip.min.js')}}"></script>
  <script src="{{asset('src/js/charts/flot/jquery.flot.resize.js')}}"></script>
  <script src="{{asset('src/js/charts/flot/jquery.flot.orderBars.js')}}"></script>
  <script src="{{asset('src/js/charts/flot/jquery.flot.pie.min.js')}}"></script>  
<script>
$(function(){

  // 
  var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  var d1 = [];
  for (var i = 0; i <= 11; i += 1) {
    d1.push([i, parseInt((Math.floor(Math.random() * (1 + 20 - 10))) + 10)]);
  }


  var d2 = [];
  for (var i = 0; i <= 6; i += 1) {
    d2.push([i, parseInt((Math.floor(Math.random() * (1 + 30 - 10))) + 10)]);
  }
  var d3 = [];
  for (var i = 0; i <= 6; i += 1) {
    d3.push([i, parseInt((Math.floor(Math.random() * (1 + 30 - 10))) + 10)]);
  }

  
  // pie

  var da = [], 
      da1 = [],
      series = 5;

  @for ($i = 0; $i < 5; $i++)

  	<? $pasotext="Paso ".$i;?>

  	@if($i==0)
  	<? $pasotext="P/C";?>
  	@endif

  	 @if($i==4)
  	<? $pasotext="Cierre";?>
  	@endif

    da[{{$i}}] = {
      label: "{{$pasotext}} ({{cuenta_paso($uid,$i)}})",
      data: {{cuenta_paso($uid,$i)}}
  }
  @endfor

  @for ($i = 0; $i < 5; $i++)
    da1[{{$i}}] = {
      label: "Paso {{$i}} ({{oportunidades_cerradas_paso($uid,$i)}})",
      data: {{oportunidades_cerradas_paso($uid,$i)}}
    }
   @endfor


  $.plot($("#flot-pie-donut"), da, {
    series: {
      pie: {
        innerRadius: 0.5,
        combine: {
              color: "#999",
              threshold: 0.05
            },
        show: true
      }
    },    
    colors: ["#c5bbbd","#8e8ec5","#8fa7c5","#5bb2c5","#43cc7d"],
    legend: {
      show: false
    },
    grid: {
        hoverable: true,
        clickable: false
    },
    tooltip: true,
    tooltipOpts: {
      content: "%s: %p.0%"
    }
  }); 


  $.plot($("#flot-pie"), da1, {
    series: {
      pie: {
        combine: {
              color: "#999",
              threshold: 0.05
            },
        show: true
      }
    },    
    colors: ["#c5bbbd","#8e8ec5","#8fa7c5","#5bb2c5","#43cc7d"],
    legend: {
      show: false
    },
    grid: {
        hoverable: true,
        clickable: false
    },
    tooltip: true,
    tooltipOpts: {
      content: "%s: %p.0%"
    }
  }); 


});
</script>
