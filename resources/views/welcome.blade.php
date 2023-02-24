@extends('layouts.app')
@section('content') 

<div class="container"> 
    
    <div class="jumbotron mt-5 pt-5">
        <h1 class="display-4"> {{ config('app.name') }}</h1>
        <p class="lead">Ce site est un projet CRUD avec le cadriciel Laravel.  Il vous permet de consulter la liste des étudiants du collège Maisonneuve, d’ajouter, modifier ou supprimer un étudiant
</p>
        <hr class="my-4">
        <a class="btn btn-warning btn-lg"  href="{{ route('index') }}" role="button">@lang('lang.etudiant-liste')</a>
    </div>
</div>

@endsection