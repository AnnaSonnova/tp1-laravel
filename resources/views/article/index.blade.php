@extends('layouts.app')
@section('content') 

<div class="container">
        <h3 class="mt-4">@lang('lang.liste-article')</h3>
        <div class="row">
            @forelse($article as $articles) 
            <div class="card col-5 p-0 m-3">
                <div class="card-header py-2 bg-primary">
               
                @if(session()->has('locale') && session()->get('locale') == 'fr') 
                    <h1>{{ ucfirst($articles->titre_fr) }} </h1>
                    @else
                    <h1>{{ ucfirst($articles->titre) }} </h1>
                    @endif
                </div>
                <div class="card-body py-5">
                    <p class="card-text">{{ ucfirst($articles->contenu) }}</p>
            @if(Auth::user()->id == $articles->user_id) 
                <div class="d-flex justify-content-around">
                
                    <a href="/edit-article/{{ $articles->id }}" class="btn btn-success">  @lang('lang.btn-modifier')</a>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">@lang('lang.btn-supprimer')</button>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
            
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                            @lang('lang.btn-supprimer')
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">@lang('lang.btn-annuler')  Annuler</button>
                                <form action="{{ route('delete.article', $articles->id) }}" method="POST">
                                    @csrf
                                    @method('delete')
                                    <button type="submit" class="btn btn-primary">@lang('lang.btn-supprimer')</button>
                                </form>
                            </div>
                        </div> 
                    </div> 
                </div>
                    
                @endif
                </div>
            </div>
            @empty
                <p class="text-warning">@lang('lang.aucunArticle')  </p>
            @endforelse
            <div style="background-color: orange;  ">
        
            <p >{{ $article}}</p>
        </div>
        </div>
        
    </div>




@endsection