@extends('master')
@section('header')

  <section id="content">
    <div class="main padder">
      <div class="row">
        <div class="col-lg-4 col-lg-offset-4 m-t-large">
          <section class="panel">
            <header class="panel-heading text-center">
              Inicia Sesión en My Sales Board
            </header>

            {{Form::open(array('class'=>'panel-body'))}}
              <div class="block">
                <label class="control-label">E-mail</label>
                <input type="text" name="username" placeholder="usuario@dominio.com" class="form-control" >
              </div>
              <div class="block">
                <label class="control-label">Contraseña</label>
                <input type="password" name="password" placeholder="password" id="inputPassword" class="form-control">
              </div>
              <!--<div class="checkbox">
                <label>
                  <input type="checkbox">Guardar Sesión
                </label>
              </div>
              <a href="#" class="pull-right m-t-mini"><small>¿Olvidó su clave?</small></a>-->
               <div class="checkbox">
                <label>
                  <input type="checkbox"> Guardar Sesión
                </label>
              </div>
              <div class="line line-dashed"></div>
              <a href="#" class="pull-right m-t-mini"><small>¿Olvidaste tu contraseña?</small></a>
             
              <button type="submit" class="btn btn-info">&nbsp;&nbsp;Entrar&nbsp;&nbsp;</button>
            
              <font color="#FF0000">{{Session::get('error')}}</font>
              <!--<div class="line line-dashed"></div>
              <p class="text-muted text-center"><small>¿Aún no tienes una cuenta?</small></p>
              <a href="signup" class="btn btn-white btn-block">Crea una cuenta.</a>-->
               <div class="line line-dashed"></div>
              <p class="text-muted text-center"><small>¿Aún no tienes una cuenta?</small></p>
              <a href="#" class="btn btn-white btn-block">Crea una cuenta</a>
            @stop
          </section>
        </div>
      </div>
    </div>
  </section>
