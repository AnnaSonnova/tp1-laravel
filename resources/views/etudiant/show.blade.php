
@extends('layouts.app')
<!-- @section('title', 'Blog List') -->
@section('content')

<div class="container">
    <div class="row mt-5">
        <div class="col-12  ">
            <p>@lang('lang.name') : <strong>{!! $etudiant->nom !!}</strong></p> 
           
            <p>@lang('lang.dateDeNaissance') : <strong> {!! $etudiant->dateDeNaissance !!}</strong></p>
            <p>@lang('lang.adresse') : <strong> {!! $etudiant->adresse !!}</strong></p>
            <p>@lang('lang.phone') : <strong> {!! $etudiant->phone !!}</strong></p> 
           
            <p>@lang('lang.city') :<strong> {!! $etudiant->ville->nomVille !!}</strong></p>
           
            <div class="d-flex justify-content-around">
                <a href="{{ route('index') }}" class="btn btn-warning  ">@lang('lang.retour')</a>
                
                @if(Auth::user()->id == $etudiant->users_id)  
                <a href="{{ route('edit', $etudiant->id)}}" class="btn btn-success"> @lang('lang.edit')</a>
               <!-- Button trigger modal -->
               <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
                  @lang('lang.delete')
                </button>
                @endif
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