<?
class Oportunidad extends Eloquent{

protected $fillable = array('nombre','detalle','fecha_inicio','estado_actual','fecha_final','cantidad','usuario_id');

	public function usuario(){
		return $this->belongsTo('Usuario');

	}


	public function cambio(){

		return $this-hasMany('Cambio');


	}


}

?>
