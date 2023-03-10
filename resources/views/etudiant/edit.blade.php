@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-12 text-center mt-2">
            <h1 class="display-one">Mettre a jour information d'etudiant</h1>

        </div>
    </div>
    <hr>
        <form action="" method="POST" class="mt-5">
                @csrf
                @method('PUT')
                
                <div class="row mb-3 mt-2">
                    <label for="nom" class="col-sm-2 col-form-label">Nom </label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="nom" value="{!! $etudiant->nom !!}">
                        </div>
                </div>
                
                
                <div class="row mb-3 mt-2">
                    <label for="adresse" class="col-sm-2 col-form-label">Adresse </label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="adresse" value="{!! $etudiant->adresse !!}">
                        </div>
                </div>
                <div class="row mb-3 mt-2">
                    <label for="phone" class="col-sm-2 col-form-label">Phone </label>
                    <div class="col-sm-6">
                        <input type="phone" class="form-control" name="phone" value="{!! $etudiant->phone !!}">
                        </div>
                </div>
                <div class="row mb-3 mt-2">
                    <label for="dateDeNaissance" class="col-sm-2 col-form-label">Date de naissance </label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="dateDeNaissance" value="{!! $etudiant->dateDeNaissance !!}">
                    </div>
                </div>


                <div class="row mb-3 mt-2">

                    <label for="ville_id" class="col-sm-2 col-form-label">Ville </label>
                    <div class="col-sm-6">
                        <select class="custom-select form-control" name="ville_id">

                            <option  value="0">Selectionner une ville</option>
                            @foreach($villes as $ville)
                                <option  value="{{ $ville->id }}" class="form-control">{{ $ville->nomVille }}</option>
                            @endforeach
                        </select>
                    </div>

                </div>

                <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                    <input type="submit" class="btn  btn-warning me-md-4" value="Modifier">
                    <a href="{{ route('index') }}" class="btn btn-secondary ">Retourner</a> 

                </div>
            </form>
</div>
@endsection