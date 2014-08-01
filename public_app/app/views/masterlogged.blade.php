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
  <!-- header -->
  <header id="header" class="navbar">
    <ul class="nav navbar-nav navbar-avatar pull-right">
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">            
          <span class="hidden-xs-only">Bienvenido <strong>{{{Auth::user()->nombre}}}</strong></span>
         <!-- <span class="thumb-small avatar inline">
            <img src="{{asset('src/images/avatar.jpg')}}" alt="Mika Sokeil" class="img-circle">
          </span>-->
          <b class="caret hidden-xs-only"></b>
        </a>
        <ul class="dropdown-menu pull-right">
          <li><a href="#">Mi Perfil</a></li>
          <li><a href="#">Facturación</a></li>
          <li class="divider"></li>
          <li><a href="docs.html">Ayuda</a></li>
          <li>{{link_to('logout','Salir')}}</li>
        </ul>
      </li>
    </ul>
    <a class="navbar-brand" href="#">MSB</a>
    <button type="button" class="btn btn-link pull-left nav-toggle visible-xs" data-toggle="class:slide-nav slide-nav-left" data-target="body">
      <i class="fa fa-bars fa-lg text-default"></i>
    </button>
    <ul class="nav navbar-nav hidden-xs">
      <li>
        <div class="m-t m-b-small" id="panel-notifications">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-comment-o fa-fw fa-lg text-default"></i><b class="badge badge-notes bg-danger count-n">2</b></a>
          <section class="dropdown-menu m-l-small m-t-mini">
            <section class="panel panel-large arrow arrow-top">
              <header class="panel-heading bg-white"><span class="h5"><strong>Tienes 2<span class="count-n">2</span> notificaciones</strong></span></header>
              <div class="list-group">
                <a href="#" class="media list-group-item">
                  <span class="pull-left thumb-small"><img src="images/avatar.jpg" alt="John said" class="img-circle"></span>
                  <span class="media-body block m-b-none">
                    Bienvenido a My Sales Board<br>
                    <small class="text-muted">23 June 14</small>
                  </span>
                </a>
              </div>
              <footer class="panel-footer text-small">
                <a href="#" class="pull-right"><i class="fa fa-cog"></i></a>
                <a href="#">See all the notifications</a>
              </footer>
            </section>
          </section>
        </div>
      </li>
      <li>
        <div class="m-t-small"><a class="btn btn-sm btn-success" data-toggle="modal" href="http://adpmx.com/salesboard/public/oportunidades/crear"><i class="fa fa-fw fa-plus"></i> Nueva Oportunidad</a></div>
      </li>

    </ul>
  </header>
  <!-- / header -->
  <!-- nav -->
  <nav id="nav" class="nav-primary hidden-xs nav-vertical">
    <ul class="nav" data-spy="affix" data-offset-top="50">
      <li class="active"><a href="http://adpmx.com/salesboard/public"><i class="fa fa-th fa-lg"></i><span>SalesBoard</span></a></li>
      <li><a href="http://adpmx.com/salesboard/public/stats"><i class="fa fa-bar-chart-o fa-lg"></i><span>Estadísticas</span></a></li>
      <li class="dropdown-submenu">
        <a href="#"><i class="fa fa-book fa-lg"></i><span>Ayuda</span></a>
      </li>
    </ul>
  </nav>
  <!-- / nav -->
  <!-- / header -->


    <div class="container">
      <div class="page-header">
        <div class="text-right">
          @if(Auth::check())
           
          Mostrando el SalesBoard de: <strong>{{{Auth::user()->nombre}}}</strong>
          {{--link_to('logout','Salir')--}}
         @else
          {{link_to('login','Log In')}}
          @endif
        </div>

        @yield('header')

      </div>

      @if(Session::has('message'))
        <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert"><i class="fa fa-times"></i></button>
          <i class="fa fa-check fa-lg"></i> {{Session::get('message')}}
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

    if ( $("#paso"+paso).hasClass('btn btn-circle') )
    $("#paso"+paso).removeClass('btn btn-circle').addClass('btn btn-success btn-circle');


    $("#estado_actual").val(paso);
    //else
    //alert("no tiene")

  }

    function creapaso(paso){

    //alert(paso)



    for(i=0;i<5;i++){
      if ( $("#paso"+i).hasClass('btn btn-success btn-circle') )
      $("#paso"+i).removeClass('btn btn-success btn-circle').addClass('btn btn-circle');
    }

    if ( $("#paso"+paso).hasClass('btn btn-circle') ){

      if(paso <=1){
      $("#paso"+paso).removeClass('btn btn-circle').addClass('btn btn-success btn-circle');
      $("#estado_actual").val(paso);
      }else{

        if($("#cantidad").val()>0){
          $("#paso"+paso).removeClass('btn btn-circle').addClass('btn btn-success btn-circle');
          $("#estado_actual").val(paso);
        }
        else
          alert("Es necesario que el monto sea mayor a Cero para pasar a este paso");


      }

    }

    
    //else
    //alert("no tiene")

  }




  </script>

  </body>
</html>