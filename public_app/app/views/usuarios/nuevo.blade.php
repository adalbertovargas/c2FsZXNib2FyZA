@extends('masterlogged')
@section('header')


<!-- Formulario Stock-->

{{ Form::open(array('url' => 'usuarios')) }}

        <section id="content">
            <section class="main padder">
                <div class="clearfix">
                    <h4><i class="fa fa-edit"></i>Form</h4>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <section class="panel">
                            <div class="panel-body">
                                <form class="form-horizontal" method="get" data-validate="parsley">

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">Email</label> 
                                        <div class="col-lg-8"> <input type="text" name="email" placeholder="test@example.com" class="bg-focus form-control" data-required="true" data-type="email"> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">Contraseña</label> 
                                        <div class="col-lg-8">
                                            <input type="password" name="pwd" placeholder="Password" class="bg-focus form-control"> 
                                            <div class="line line-dashed m-t-large"></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">Usuario</label> 
                                        <div class="col-lg-8"> <input type="text" name="apodo" placeholder="Username" data-required="true" class="form-control"> </div>
                                    </div>
                                   

                                        
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">Tipo de cuenta</label> 
                                            <select name="account" class="form-control">
                                                <option value="0">Administrador</option>
                                                <option value="1">Vendedor independiente</option>
                                                <option value="2">Vendedor</option>
                                                <option value="3">Gerente</option>
                                                <option value="4">Director</option>
                                                <option value="5">Director General</option>
                                            </select>
                                    </div>
                                    

                                    <div class="form-group">
                                        <div class="col-lg-9 col-lg-offset-3"> <button type="submit" class="btn btn-white">Cancelar</button> <button type="submit" class="btn btn-primary">Crear usuario</button> </div>
                                    </div>
                                </form>
                            </div>
                        </section>

                    </div>

                </div>
            </section>
 {{ Form::close() }}       
<! -- Formulario -->

