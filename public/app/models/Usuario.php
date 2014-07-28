<?
class Usuario extends Eloquent{

//public $timestamps = false;

		public function oportunidades(){
		return $this->hasMany('Oportunidad');

	}



}

?>