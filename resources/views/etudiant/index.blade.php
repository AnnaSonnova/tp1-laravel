@extends('layouts.app')
<!-- @section('title', 'Blog List') -->
@section('content')
<div class="container">
    <div class="row mt-5 pb-5">
        <h3 class="display-5"> {{ config('app.name') }}</h3>
            <hr>
            <div class="card">
                <div class="card-header" style="color:chocolate; ">
                    <h1>Liste des etudiants du Collège Maisonneuve</h1>
                </div>
                <div class="card-body ">
                    @forelse($etudiants as $etudiant) 
                        <ul> 
                            <li><a href="{{ route('show', $etudiant->id) }}" style=" color:black; "> {{ ucfirst($etudiant->nom) }}, {{ ucfirst($etudiant->prenom) }}</a></li> 
                        </ul>
                    @empty
                        <p class="text-warning">Aucun etudiant disponible </p>
                    @endforelse
            </div>   
            {{$etudiants}}
    </div>
</div>


@endsection