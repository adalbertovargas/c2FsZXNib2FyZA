<?
class Cambio extends Eloquent{

protected $fillable = array('estado_antes','estado_actual','fecha_cambio','comentario','oportunidad_id');

	public function cambio(){
		return $this->belongsTo('Oportunidad');

	}



}

?>
