<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
    <title>My Sales Board</title>
    <link rel="stylesheet" href="{{asset('src/css/bootstrap.css')}}">
    <link rel="stylesheet" href="{{asset('src/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('src/js/select2/select2.css')}}">
    <link rel="stylesheet" href="{{asset('src/css/plugin.css')}}">
    <link rel="stylesheet" href="{{asset('src/css/font.css')}}">
    <link rel="stylesheet" href="{{asset('src/css/style.css')}}">

  </head>
  <body>
  <!-- header -->
  <header id="header" class="navbar bg bg-black">
    <a href="docs.html" class="btn btn-link pull-right m-t-mini"><i class="fa fa-question fa-lg text-default"></i></a>
    <a class="navbar-brand" href="#">MSB</a>
  </header>
  <!-- / header -->


    <div class="container">
      <div class="page-header">
        <div class="text-right">
          @if(Auth::check())
          Logeado como
          <strong>{{{Auth::user()->username}}}</strong>
          {{link_to('logout','Salir')}}
       
          @endif
        </div>
        @yield('header')
      </div>
      @if(Session::has('message'))
        <div class="alert alert">
          {{Session::get('message')}}</font>
        </div>
      @endif


      @yield('content')
    </div>

  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>&copy; My Sales Board 2014</small><br><br>
        <a href="#" class="btn btn-xs btn-circle btn-twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="btn btn-xs btn-circle btn-facebook"><i class="fa fa-facebook"></i></a>
        <a href="#" class="btn btn-xs btn-circle btn-gplus"><i class="fa fa-google-plus"></i></a>
      </p>
    </div>
  </footer>
  <!-- / footer -->
  <script src="{{asset('src/js/jquery.min.js')}}"></script>
  <!-- Bootstrap -->
  <script src="{{asset('src/js/bootstrap.js')}}"></script>
  <!-- app -->
  <script src="{{asset('src/js/app.js')}}"></script>
  <script src="{{asset('src/js/app.plugin.js')}}"></script>
  <script src="{{asset('src/js/app.data.js')}}"></script>
  <script src="{{asset('src/js/datepicker/bootstrap-datepicker.js')}}"></script>
  <script src="{{asset('src/js/combodate/combodate.js')}}"></script> 


  <script>

  function cambiapaso(paso){

    //alert(paso)


    if ( $("#paso"+paso).hasClass('btn btn-danger btn-circle') )
    alert("Es necesario especificar un monto mayor a $0 para pasar al paso 2, 3 o Cierre");

    for(i=0;i<5;i++){
      if ( $("#paso"+i).hasClass('btn btn-success btn-circle') )
      $("#paso"+i).removeClass('btn btn-success btn-circle').addClass('btn btn-circle');
    }

    if ( $("#paso"+paso).hasClass('btn btn-circle') ){
    $("#paso"+paso).removeClass('btn btn-circle').addClass('btn btn-success btn-circle');
    

    }

    $("#estado_actual").val(paso);
$("#moverbtn").attr("disabled",true);
    //else
    //alert("no tiene")

  }




  </script>

  </body>
</html>