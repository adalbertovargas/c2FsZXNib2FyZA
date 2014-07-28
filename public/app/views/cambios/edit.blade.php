@extends('master')
@section('header')


<a href="{{('oportunidades/'.$oportunidad->id)}}">&larr;Cancel</a>
<h2>
  Agregar un Cambio
</h2>

@section('content')

<div class="row">
        <div class="col-md-6">
          <section class="panel">
            <header class="panel-heading font-bold">Pie Chart</header>
            <div class="panel-body">
              <div id="flot-pie" style="height: 240px; padding: 0px; position: relative;"><canvas class="flot-base" width="508" height="240" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 508px; height: 240px;"></canvas><canvas class="flot-overlay" width="508" height="240" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 508px; height: 240px;"></canvas><span class="pieLabel" id="pieLabel0" style="position: absolute; top: 15px; left: 315.5px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(19,196,165);">Series1<br>23%</div></span><span class="pieLabel" id="pieLabel1" style="position: absolute; top: 123px; left: 352.5px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(63,207,127);">Series2<br>8%</div></span><span class="pieLabel" id="pieLabel2" style="position: absolute; top: 203px; left: 302.5px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(81,145,209);">Series3<br>17%</div></span><span class="pieLabel" id="pieLabel3" style="position: absolute; top: 108px; left: 114.5px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(244,196,20);">Series4<br>51%</div></span></div>
            </div>
          </section>
        </div>
        <div class="col-md-6">
          <section class="panel">
            <header class="panel-heading font-bold">Donut pie</header>
            <div class="panel-body">
              <div id="flot-pie-donut" style="height: 240px; padding: 0px; position: relative;"><canvas class="flot-base" width="508" height="240" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 508px; height: 240px;"></canvas><canvas class="flot-overlay" width="508" height="240" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 508px; height: 240px;"></canvas><div class="legend"><div style="position: absolute; width: 50px; height: 60px; top: 5px; right: 5px; opacity: 0.85; background-color: rgb(255, 255, 255);"> </div><table style="position:absolute;top:5px;right:5px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(19,196,165);overflow:hidden"></div></div></td><td class="legendLabel">Series1</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(63,207,127);overflow:hidden"></div></div></td><td class="legendLabel">Series2</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(81,145,209);overflow:hidden"></div></div></td><td class="legendLabel">Series3</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(244,196,20);overflow:hidden"></div></div></td><td class="legendLabel">Series4</td></tr></tbody></table></div><span class="pieLabel" id="pieLabel0" style="position: absolute; top: 65px; left: 310.5px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(19,196,165);">Series1<br>38%</div></span><span class="pieLabel" id="pieLabel1" style="position: absolute; top: 203px; left: 253.5px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(63,207,127);">Series2<br>10%</div></span><span class="pieLabel" id="pieLabel2" style="position: absolute; top: 204px; left: 166.5px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(81,145,209);">Series3<br>16%</div></span><span class="pieLabel" id="pieLabel3" style="position: absolute; top: 56px; left: 112.5px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(244,196,20);">Series4<br>35%</div></span></div>
            </div>
          </section>
        </div>
      </div>
@stop
