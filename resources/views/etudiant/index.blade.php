@extends('layouts.app')
<!-- @section('title', 'Blog List') -->
@section('content')
<div class="container">
    <div class="row mt-5 pb-5">
        <h3 class="display-5"> {{ config('app.name') }}</h3>
            <hr>
            <div class="card">
                <div class="card-header" style="color:chocolate; ">
                    <h1>  @lang('lang.etudiant-college')</h1>
                </div>
                <div class="card-body ">
                    @forelse($etudiants as $etudiant) 
                        <ul> 
                       
                            <li><a href="{{ route('show', $etudiant->id) }}" style=" color:black; ">    {{ $etudiant->name }}, {{ ucfirst($etudiant->adresse) }}, {{ucfirst($etudiant->dateDeNaissance)}}  , {{ $etudiant->ville }}</a></li>
                           
                        </ul>
                    @empty
                        <p class="text-warning">Aucun etudiant disponible </p>
                    @endforelse
            </div>   
            {{$etudiants}}
    </div>
</div>


@endsection