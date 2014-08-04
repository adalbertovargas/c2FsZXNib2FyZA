<?php

//APP FUNCTIONS

function oportunidades_cerradas($usuario_id){

$oportunidades_cerradas = Oportunidad::whereRaw('usuario_id='.$usuario_id." and visible=1 and estado_actual=4");

return $oportunidades_cerradas->count();


}


function porcentaje_paso($usuario_id,$paso){

		$oportunidades_paso = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual=".$paso)->get();
		$oportunidades_todas = Oportunidad::whereRaw('usuario_id='.$usuario_id)->get();


		//Verificamos mayor de cero antes de hacer la división.
		if($oportunidades_todas->count()>0)
		$porcentaje=$oportunidades_paso->count()/$oportunidades_todas->count()*100;
		else
		$porcentaje=0;

		return /*$counter1."/".$counter2."=".*/round($porcentaje,0);

}

function cuenta_paso($usuario_id,$paso){

		$oportunidades_paso = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual=".$paso)->get();

		return $oportunidades_paso->count();

}



function oportunidades_paso($usuario_id,$paso){

		$oportunidades_cerradas = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual=4")->get();
		$oportunidades_todas = Oportunidad::whereRaw('usuario_id='.$usuario_id)->get();

		$counter1=0;
		$counter2=0;

		// Oportunidades CERRADAS que estuvieron en el paso X
		foreach($oportunidades_cerradas as $oportunidad){
			$op_paso= Cambio::whereRaw('estado_actual='.$paso.' and oportunidad_id='.$oportunidad->id)->groupBy("oportunidad_id");
			if($op_paso->count()>0)
			$counter1++;
		}

		//Oportunidades Totales que estuvieron en el paso X
		foreach($oportunidades_todas as $oportunidad){
			$op_paso= Cambio::whereRaw('estado_actual='.$paso.' and oportunidad_id='.$oportunidad->id)->groupBy("oportunidad_id");
						
			if($op_paso->count()>0)
			$counter2++;
		}


		//Verificamos mayor de cero antes de hacer la división.
		if($counter2>0)
		$porcentaje=$counter1/$counter2*100;
		else
		$porcentaje=0;

		return /*$counter1."/".$counter2."=".*/round($porcentaje,0);

}

function oportunidades_paso_totales($usuario_id,$paso){

		$oportunidades_todas = Oportunidad::whereRaw('usuario_id='.$usuario_id)->get();

		$counter2=0;

		//Oportunidades Totales que estuvieron en el paso X
		foreach($oportunidades_todas as $oportunidad){
			$op_paso= Cambio::whereRaw('estado_actual='.$paso.' and oportunidad_id='.$oportunidad->id)->groupBy("oportunidad_id");
			
			if($op_paso->count()>0)
			$counter2++;
		}


		return $counter2;

}



function oportunidades_activas($usuario_id){


		$oportunidades_cerradas = Oportunidad::whereRaw('usuario_id='.$usuario_id." and visible=1 and estado_actual>0 and estado_actual<4")->get();

		return $oportunidades_cerradas->count();


}


function oportunidades_cerradas_paso($usuario_id,$paso){

		$oportunidades_cerradas = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual=4")->get();

		$counter1=0;

		// Oportunidades CERRADAS que estuvieron en el paso X
		foreach($oportunidades_cerradas as $oportunidad){
			$op_paso= Cambio::whereRaw('estado_actual='.$paso.' and oportunidad_id='.$oportunidad->id)->groupBy("oportunidad_id");
			$counter1+=$op_paso->count();
		}

		return $counter1;

}

function oportunidades_totales_paso($usuario_id,$paso){

		$oportunidades_totales = Oportunidad::whereRaw('usuario_id='.$usuario_id." and visible=1 and estado_actual=".$paso)->groupBy("id")->get();


		return $oportunidades_totales->count();

}

function oportunidades_totales($usuario_id){

		$oportunidades_totales = Oportunidad::whereRaw('estado_actual>0 and estado_actual<4 and visible=1 and usuario_id='.$usuario_id)->get();

		return $oportunidades_totales->count();

}



function oportunidades_totales_historico($usuario_id){

		$oportunidades_totales = Oportunidad::whereRaw('estado_actual>0 and estado_actual<=4 and usuario_id='.$usuario_id)->get();

		return $oportunidades_totales->count();

}

function porcentaje_totales($uid,$paso){


	if(oportunidades_paso_totales($uid,$paso)>0)
	return round(oportunidades_paso_totales($uid,$paso)/oportunidades_totales_historico($uid)*100);
	else return 0;



}


function cierres_probables($uid){

return floor((oportunidades_totales_paso($uid,1)*oportunidades_paso($uid,1)+oportunidades_totales_paso($uid,2)*oportunidades_paso($uid,2)+oportunidades_totales_paso($uid,3)*oportunidades_paso($uid,3))/100);



}


function ciclo_ventas($usuario_id){

		$oportunidades_cerradas = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual=4")->get();

		$counter=0;
		foreach ($oportunidades_cerradas as $oportunidad) {
			
			$fecha_inicial=date_create($oportunidad->fecha_inicio);
			$fecha_final=date_create($oportunidad->fecha_final);
			
			$intervalo = date_diff($fecha_inicial, $fecha_final);

			$counter+=$intervalo->format('%R%a');

		}

		if($oportunidades_cerradas->count()>0)
		return ceil($counter/$oportunidades_cerradas->count());
		else
		return 0;


}

function total_paso($usuario_id,$paso){


	$oportunidades = Oportunidad::whereRaw('usuario_id='.$usuario_id." and visible=1 and estado_actual=".$paso)->get();

	return number_format($oportunidades->sum('cantidad'));


}

function ventas_promedio($usuario_id){

		$ventas = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual=4")->get();

		if($ventas->count()>0)
		return number_format($ventas->sum('cantidad')/$ventas->count(),0);
		else
		return 0;


}

function pc_prospecto($usuario_id){

		$oportunidades = Oportunidad::whereRaw('cambios.estado_antes=0 and oportunidads.estado_actual>0 and oportunidads.usuario_id='.$usuario_id)
			->join('cambios','oportunidads.id','=','cambios.oportunidad_id')
			->groupBy('oportunidads.id')
			->get();


		$oportunidades_todas = Oportunidad::whereRaw('cambios.estado_antes=-1 and cambios.estado_actual=0 and oportunidads.usuario_id='.$usuario_id)
			->join('cambios','oportunidads.id','=','cambios.oportunidad_id')
			->groupBy('oportunidads.id')
			->get();

		if($oportunidades_todas->count()>0)
		return round($oportunidades->count()/$oportunidades_todas->count()*100);
		else
		return 0;

}

function proporcion_ventas($usuario_id){


		$oportunidades = Oportunidad::whereRaw('cambios.estado_actual>0 and cambios.usuario_id='.$usuario_id)
			->join('cambios','oportunidads.id','=','cambios.oportunidad_id')
			->groupBy('cambios.oportunidad_id')
			->get();

		$oportunidades_cerradas = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual=4")->get();

		if($oportunidades_cerradas->count()>0)
		return ceil($oportunidades->count()/$oportunidades_cerradas->count());
		else
		return 0;
}



function porcentaje_cierre($usuario_id){


		$oportunidades_cerradas = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual=4")->get();
		$oportunidades_totales = Oportunidad::whereRaw('usuario_id='.$usuario_id." and estado_actual>0")->get();

		if($oportunidades_totales->count()>0)
		return round($oportunidades_cerradas->count()/$oportunidades_totales->count()*100);
		else
		return 0;

}

function cuenta_dias($fecha){

   $now = time(); // or your date as well
     $your_date = strtotime($fecha);
     $datediff = $now - $your_date;
     $dias=floor($datediff/(60*60*24)); 

     if($dias==0)
     return "<24h";


     if($dias==1)
     return "1 dia";

     if($dias>1)
     return floor($datediff/(60*60*24))." dias";



}



//TOOLS FUNCTIONS

function nicetime($date)
{
    if(empty($date)) {
        return "No date provided";
    }
    
    $periods         = array("segundo", "minuto", "hora", "dia", "semana", "mes", "año", "decada");
    $lengths         = array("60","60","24","7","4.35","12","10");
    
    $now             = time()+3600;
    $unix_date         = strtotime($date);
    
       // check validity of date
    if(empty($unix_date)) {    
        return "Bad date";
    }

    // is it future date or past date
    if($now > $unix_date) {    
        $difference     = $now - $unix_date;
        $tense         = "";

    } else {
        $difference     = $unix_date - $now;
        $tense         = "";
    }
    
    for($j = 0; $difference >= $lengths[$j] && $j < count($lengths)-1; $j++) {
        $difference /= $lengths[$j];
    }
    
    $difference = round($difference);
    
    if($difference != 1) {
    	if($periods[$j]!="mes")
        $periods[$j].= "s";
    	else
    	$periods[$j].= "es";
    }
    
    return "{$tense} $difference $periods[$j] ";
}


function marca_paso($estado,$paso){

	if($estado==$paso)
		return "btn btn-inverse btn-circle";
	else
		return "btn btn-circle";


}


function marca_paso2($oportunidad,$paso){

	if($oportunidad->estado_actual==$paso)
		return "btn btn-inverse btn-circle";
	else{

	if($oportunidad->cantidad==0 and $paso>1)
		return "btn btn-danger btn-circle";
		else
		return "btn btn-circle";

	}


}

function icono_oportunidad($estado_actual){

	switch($estado_actual){

		case 0:
		return "fa fa-phone";
		break;

		case 1:
		return "fa fa-search";
		break;

		case 2:
		return "fa fa-desktop";
		break;

		case 3:
		return "fa fa-thumbs-up";
		break;

		case 4:
		return "fa fa-check";
		break;



	}




}

function paso2txt($paso){

	switch ($paso) {
		case 0:
			return "<strong>PC</strong>";
			break;
		
		case 1:
			return "<strong>Paso 1</strong>";
			break;
		case 2:
			return "<strong>Paso 2</strong>";
			break;
		case 3:
			return "<strong>Paso 3</strong>";
			break;
		case 4:
			return "<strong>Cierre</strong>";
			break;
								
	}


}


function getHistory($oportunidad){



		$cambios = Cambio::whereRaw('oportunidad_id='.$oportunidad->id)->orderBy('created_at','desc')->get();

		$tipo="";
		$icono="";
		$color="";
		$counter=0;
		foreach ($cambios as $cambio) {

			$counter++;

			if($counter%2==0){
				$lado="left";
				$alt="";
			}else{
				$lado="right";
				$alt="alt";

			}


			if($cambio->estado_antes>=0 and $cambio->estado_actual>=0){
				$tipo="Movimiento";
				$descripcion ="Cambio de ".paso2txt($cambio->estado_antes). " a ".paso2txt($cambio->estado_actual);
				$icono=icono_oportunidad($cambio->estado_actual);

				if($cambio->estado_antes<$cambio->estado_actual)
				$color="bg-primary";
				else
				$color="bg-danger";

				if($cambio->estado_actual==4){
					$color="bg-success";
					$descripcion="Se Cerro la Venta";

				}


			}

			if($cambio->estado_antes==-1){
				$tipo="Se Creo";
				$descripcion="Nueva Oportunidad en ".paso2txt($cambio->estado_actual);
				$icono=icono_oportunidad($cambio->estado_actual);
				$color="bg-info";
			}

			if($cambio->estado_antes==-1 and $cambio->estado_actual==-1){
			$tipo="Comentario";
			$descripcion =$cambio->comentario;
			$icono="fa-pencil";
			$color="";
			}

			echo '<article class="timeline-item '.$alt.'">';
			echo 	'<div class="timeline-caption">';
			echo 		'<div class="panel arrow arrow-'.$lado.'">';
			echo 		'<span class="timeline-icon"><i class="fa '.$icono.' time-icon '.$color.'"></i></span>';
            echo    	'<span class="timeline-date">'.date("F j, Y",strtotime($cambio->fecha_cambio)).'</span>';
            echo        '<h5>';
            echo 		'<span>'.$tipo.'</span>';
            echo 		$descripcion;
            echo 		'<h5>';
			echo   		'</div>';
			echo 	'</div>';
			echo '</article>';


		}



}

