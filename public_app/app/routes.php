<?php

Route::model('oportunidad','Oportunidad');

View::composer('oportunidades.edit', function($view)
{
  $usuarios = Usuario::all();
  $usuario_options = array_combine($usuarios->lists('id'), $usuarios->lists('name'));
  $view->with('usuario_options', $usuario_options);
});


Route::get('/', function(){
  return Redirect::to('oportunidades');
});

/*
 * Muestra vista "nuevo/usuario" al acceder a url/administrador
 */

/* Working
Route::get('administrador', function()
{
	return View::make('usuarios.nuevo')->with('','');

});
*/
Route::get('usuarios', function() {
	$cat = new Usuario;
 	return View::make('usuarios.nuevo')
 	->with('method', 'post');
});

/* Not working

 * Guarda datos recibidos de vista "nuevo usuario"
 

	Route::post('administrador',function(){


	}
*/
Route::get('about',function(){
	return View::make('about')->with('number_of_oportunidades',9000);
});


// Verifica que este Autorizado antes de hacer cualquiera de estas.
Route::group(array('before'=>'auth'), function(){


	Route::get('oportunidades',function(){

			$oportunidades=Oportunidad::
			where('visible','=','1')->
			where('usuario_id','=',Auth::user()->id)
			->orderBy('estado_actual', 'ASC')->orderBy('fecha_inicio', 'ASC')->get(); //AGREGAR ORDENAR COMO SEGUNDO CRITERIO POR FECHA DE INICIO
			return View::make('oportunidades.index')
			->with('oportunidades',$oportunidades);
		}

		);


	Route::get('stats',function(){

			$oportunidades=Oportunidad::
			where('usuario_id','=',Auth::user()->id)
			->orderBy('estado_actual', 'ASC')->get();
			return View::make('stats')
			->with('oportunidades',$oportunidades);
		});



	Route::get('oportunidades/usuarios/{nombre}',function($nombre){

			$usuario=Usuario::whereName($nombre)
			->with('oportunidades')->first();
			return View::make('oportunidades.index')
			->with('usuario',$usuario)
			->with('oportunidades',$usuario
			->oportunidades);

	});


	// A donde me dirijo.
	Route::get('oportunidades/crear',function(){

		$oportunidad = new Oportunidad;
		return View::make('oportunidades.edit')
		->with('oportunidad',$oportunidad)
		->with('method','post');


	});

	//Como regreso aquí.

	Route::post('oportunidades',function(){

		//$oportunidad=Oportunidad::create(Input::all());

		$oportunidad = new Oportunidad;
		$oportunidad->fill(Input::all());
		$oportunidad->empresa_id=1;
		$oportunidad->save();
	
		$cambio = new Cambio;
		$cambio->usuario_id=$oportunidad->usuario_id;
		$cambio->estado_antes=-1;
		$cambio->estado_actual=$oportunidad->estado_actual;
		$cambio->fecha_cambio=$oportunidad->fecha_inicio;
		$cambio->oportunidad_id=$oportunidad->id;
		$cambio->save();


		return Redirect::to('oportunidades/'.$oportunidad->id)
		->with('message','Se creo una oportunidad correctamente.');

	});


	// A donde me dirijo.
	Route::get('cambios/{oportunidad}/crear',function(Oportunidad $oportunidad){

		//$cambio = new Cambio;
		return View::make('cambios.edit')
		->with('oportunidad',$oportunidad)
		->with('method','post');

	});

	//Como regreso aquí.

	Route::post('cambios/{oportunidad}',function(Oportunidad $oportunidad){

		//$var = Input::get('fecha_cambio');
		//$oportunidad = Oportunidad::find($oportunidad);
		$oportunidad->estado_actual=Input::get('estado_actual');
		
		$cambio = new Cambio;
		$cambio->fill(Input::all());

		$cambio->oportunidad_id=$oportunidad->id;
		$cambio->usuario_id=$oportunidad->usuario_id;

		// Si la oportunidad llegó al paso 4 (cierre) entonces se pone la fecha final.
		if($cambio->estado_actual==4)
		$oportunidad->fecha_final=$cambio->fecha_cambio;

		$oportunidad->save();
		$cambio->save();
		//$cambio=Cambio::create(array('fecha_cambio',$var));
		return Redirect::to('oportunidades/'.$oportunidad->id)
		->with('message','Se agrego el cambio correctamente.');

	});

	Route::post('cambios/{oportunidad}/nota',function(Oportunidad $oportunidad){

		//$var = Input::get('fecha_cambio');
		//$oportunidad = Oportunidad::find($oportunidad);		
		$cambio = new Cambio;
		$cambio->fill(Input::all());

		$cambio->oportunidad_id=$oportunidad->id;
		$cambio->usuario_id=$oportunidad->usuario_id;
		
		$cambio->estado_antes=-1;
		$cambio->estado_actual=-1;

		// Si la oportunidad llegó al paso 4 (cierre) entonces se pone la fecha final.
		$cambio->save();

		return Redirect::to('oportunidades/'.$oportunidad->id)
		->with('message','Se agrego la nota a la bitacora.');

	});






	Route::get('oportunidades/{oportunidad}',function(Oportunidad $oportunidad){

		return View::make('oportunidades.single')
		->with('oportunidad',$oportunidad);

	});







	Route::get('oportunidades/{oportunidad}/editar',function(Oportunidad $oportunidad){

		return View::make('oportunidades.edit')
		->with('oportunidad',$oportunidad)
		->with('method','put');


	});

	Route::get('oportunidades/{oportunidad}/eliminar',function(Oportunidad $oportunidad){

		return View::make('oportunidades.edit')
		->with('oportunidad',$oportunidad)
		->with('method','delete');


	});



		Route::put('oportunidades/{oportunidad}',function(Oportunidad $oportunidad){

				$oportunidad->update(Input::all());
				return Redirect::to('oportunidades/'.$oportunidad->id)->with('message','Se actualizo correctamwnte');

		});

		Route::delete('oportunidades/{oportunidad}',function(Oportunidad $oportunidad){

				//$oportunidad->delete();
				
				$oportunidad->visible=0;
				$oportunidad->save();


				return Redirect::to('oportunidades/')->with('message','Se elimino la oportunidad');


		});





		Route::get('login',function(){

			return View::make('login');

		});



});


//Hace que se vea el Login si no hay sessión
Route::get('login', array('before'=>'guest', function(){
  return View::make('login');
}));

Route::post('login',function(){
	if(Auth::attempt(Input::only('username','password'))){
		return Redirect::intended('/');
	}else{
		return Redirect::back()->withInput()->with('error','Error en los datos.');


	}

});

Route::get('logout',function(){
	Auth::logout();
	return Redirect::to('/')->with('message','Has cerrado sesión');

	});



View::composer('oportunidades.edit', function($view)
{
  $usuarios = Usuario::all();
  if(count($usuarios) > 0){
    $usuario_options = array_combine($usuarios->lists('id'), 
                                 $usuarios->lists('nombre'));
  } else {
    $usuario_options = array(null, 'Unspecified');
  }
  $view->with('usuario_options', $usuario_options);
});



