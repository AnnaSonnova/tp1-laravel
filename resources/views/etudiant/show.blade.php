@extends('layouts.app')
<!-- @section('title', 'Blog List') -->
@section('content')
<div class="container">
    <div class="row mt-5">
        <div class="col-12 ">
            <p>Nom : <strong>{!! $etudiant->nom !!}</strong></p> 
            <p>Prenom : <strong>  {!! $etudiant->prenom !!}</strong></p>
            <p>Date de naissance : <strong> {!! $etudiant->dateDeNaissance !!}</strong></p>
            <p>Adresse : <strong> {!! $etudiant->adresse !!}</strong></p>
            <p>Phone : <strong> {!! $etudiant->phone !!}</strong></p> 
            <p>Email : <strong> {!! $etudiant->email !!}</strong></p>
            <p>Ville :<strong> {!! $etudiant->EtudiantAVille->nomVille !!}</strong></p> 
            <div class="d-flex justify-content-around">
                <a href="{{ route('index') }}" class="btn btn-warning">Retourner</a>
                <a href="{{ route('edit', $etudiant->id)}}" class="btn btn-success">Modifier</a>
               <!-- Button trigger modal -->
               <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
                 Effacer
                </button>
                
            </div>
        </div>
        

    </div>
    
</div>


@endsection

<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="ModalLabel" style="color: orange; ">Effacer un etudiant</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="color: black; ">
        Vouler-vous effacer cet etudiant?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <form action="{{ route('edit', $etudiant->id)}} " method="post">

                @csrf
                @method('delete')
                <input type="submit" class="btn btn-danger" value="Effacer">
        </form>
      </div>
    </div>
  </div>
</div>