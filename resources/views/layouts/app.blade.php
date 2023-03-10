<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{config("app.name")}} : @yield('title')</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.css')}}">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.0/mdb.min.css" rel=
"stylesheet">
  </head>
  <body class="color-body margin-body">
    <div >
          <img class="d-block w-100" src="{{ asset('img/BandeauGeneriqueFutur1.jpg')}}" alt="Second slide">
    </div>
    @php $locale = session()->get('locale'); @endphp
    <!-- @php $privilege = session()->get('user_privilege'); @endphp -->
    <nav class="navbar navbar-expand-lg " style="background-color: orange; padding:5px; ">
      
      <div class="container-fluid">
        
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" >
            <span class="navbar-toggler-icon" ></span>
          </button>
         
          <div class="collapse navbar-collapse navbar-nav" id="navbarNavAltMarkup" style="gap: 20px;" >

            <h4 class="d-inline p-2  " style="color:white; ">@lang('lang.text_hello')  @if(Auth::check()) {{Auth::user()->name}} @else Guest  @endif</h4>
            @guest
            
            <a class="nav-link" href="{{route('user.create')}}" style="color:white; font-size: 18px; ">@lang('lang.register')</a>
            <a class="nav-link" href="{{route('login')}}" style="color:white; font-size: 18px; ">@lang('lang.login')</a>
            @else
            <a class="nav-link" href="{{route('logout')}}"  style="color:white; font-size: 18px; ">@lang('lang.logout')</a>
            <a class="nav-link" href="{{ route('liste.article') }}" style="color:white; font-size: 18px; ">@lang('lang.article')</a>
            <a class="nav-link "  href="{{ route('create.article') }}" style="color:white; font-size: 18px; ">@lang('lang.ajouter-article')</a>
            <a class="nav-link" href="{{ route('document.liste') }}" style="color:white; font-size: 18px;">Document</a>
            @endguest 
          </div>
          <div class="navbar-nav">
         
            <a class="nav-link" href="{{ route('index') }}" style="color:white; font-size: 18px; " >@lang('lang.etudiant-liste')</a>
            <!-- <a class="nav-link" href="{{ route('create') }}" >@lang('lang.ajout-etudiant')</a> -->
           
            <a class="nav-link" href="{{ route('about') }}" style="color:white; font-size: 18px; " >@lang('lang.about')</a>
            <a class="nav-link @if($locale=='en') bg-secondary @endif" href="{{route('lang', 'en')}}" style="color:white; font-size: 18px; ">En <i class="flag flag-united-states"></i></a>
            <a class="nav-link @if($locale=='fr') bg-secondary @endif" href="{{route('lang', 'fr')}}" style="color:white; font-size: 18px; ">Fr <i class="flag flag-france"></i></a>
            
           
          </div>
        </div>
    </nav>

    <!-- <ul class="nav justify-content-end" style="background-color: orange; padding:5px;">
      <li class="nav-item">
        <a class="nav-link active"  aria-current="page" href="{{ route('index') }}">Liste des etudiants</a>

      </li>
      <li class="nav-item">
        <a class="nav-link"  href="{{ route('about') }}">A propos de nous</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="{{ route('create') }}" role="button">Ajouter un etudiant</a>
      </li>
    </ul> -->
      <!-- 
      <li class="nav-item">
        <a class="nav-link disabled"  href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li> -->

    @yield('content')
    
   

    
   
   <script src="{{ asset('js/bootstrap.min.js') }}"></script>
 </body> 


</html>