@extends('layouts.app')
@section('content')
<div class="container">

    <div class="row">
        <div class="col-12 text-center mt-2">
            <h1 class="display-one"> @lang('lang.addStudent')</h1>

        </div>
    </div>
    <hr>
        <div class="col-12 text-center mt-2">
            <form action="" method="POST" class="mt-5">
                @csrf

                <div class="row mb-3 mt-2">
                    <label for="nom" class="col-sm-2 col-form-label">@lang('lang.name')</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="nom" >
                        </div>
                </div>
               
                <div class="row mb-3 mt-2">
                    <label for="email" class="col-sm-2 col-form-label">@lang('lang.email') </label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" name="email">
                        </div>
                </div>
                <div class="row mb-3 mt-2">
                    <label for="adresse" class="col-sm-2 col-form-label">@lang('lang.adresse') </label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="adresse" >
                        </div>
                </div>
                <div class="row mb-3 mt-2">
                    <label for="phone" class="col-sm-2 col-form-label">@lang('lang.phone') </label>
                    <div class="col-sm-6">
                        <input type="phone" class="form-control" name="phone" >
                        </div>
                </div>
                <div class="row mb-3 mt-2">
                    <label for="dateDeNaissance" class="col-sm-2 col-form-label">@lang('lang.dateDeNaissance')</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="dateDeNaissance" >
                    </div>
                </div>
              
            </div>


                <div class="row mb-3 mt-2">

                    <label for="ville_id" class="col-sm-2 col-form-label">Ville @lang('lang.city') </label>
                    <div class="col-sm-6">
                        <select class="custom-select form-control" name="ville_id">

                            <option  value="0">@lang('lang.selectCity')</option>
                            @foreach($villes as $ville)
                                <option  value="{{ $ville->id }}" class="form-control">{{ $ville->nomVille }}</option>
                            @endforeach
                        </select>
                    </div>

                </div>
                <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                    <input type="submit" class="btn btn-secondary me-md-4" value=" @lang('lang.submit')">
                    <a href="{{ route('index') }}" class="btn btn-warning ">@lang('lang.retour')</a> 

                </div>
            </form>
            
            
            
        </div>
    
            
    
</div>
@endsection