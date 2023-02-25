@extends('layouts.app')
@section('content') 

<div class="container"> 
    
    <div class="jumbotron mt-5 pt-5">
        <h1 class="display-4"> {{ config('app.name') }}</h1>
        <p class="lead">@lang('lang.text-welcome')
</p>
        <hr class="my-4">
        <a class="btn btn-warning btn-lg"  href="{{ route('create.article') }}" role="button">@lang('lang.ajouter-article')</a>
        
        <a class="btn btn-warning btn-lg"  href="{{ route('index') }}" role="button">@lang('lang.etudiant-liste')</a>
       
    </div>
</div>

@endsection