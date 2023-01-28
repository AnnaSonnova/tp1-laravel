<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{config("app.name")}} : @yield('title')</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.css')}}">
</head>
<body class="color-body">
<ul class="nav justify-content-end" style="background-color: orange; padding:5px;">
  <li class="nav-item">
    <a class="nav-link active"  aria-current="page" href="{{ route('index') }}">Liste des etudiants</a>
    
  </li>
  <li class="nav-item">
    <a class="nav-link"  href="{{ route('about') }}">A propos de nous</a>
  </li>
  <li class="nav-item">
    <a class="nav-link"  href="{{ route('create') }}" role="button">Ajouter un etudiant</a>
  </li>
  <!-- 
  <li class="nav-item">
    <a class="nav-link disabled"  href="#" tabindex="-1" aria-disabled="true">Disabled</a>
  </li> -->
</ul>
@yield('content')
</body>
<script src="{{ asset('js/bootstrap.min.js')}}"></script>
</html>