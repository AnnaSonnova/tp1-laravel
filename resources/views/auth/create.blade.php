@extends('layouts.app')
<!-- @section('title', 'Enregistrer') -->
@section('content')
<main class="login-form">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 pt-4">
                <div class="card">
                    <h3 class="card-header text-center">
                    @lang('lang.sign_up')
                    </h3>

                    <div class="card-body">
                        @if(session('success'))
                        <div class="alert alert-success">
                        {{session('success')}}

                        </div>
                        @endif
                        <form action="{{route('user.store')}}" method="post">
                           @csrf 
                           <div class="form-group mb-3">
                                <input type="text" placeholder="@lang('lang.name')" class=
                                "form-control" name="name" value="{{old('name')}}">
                            @if($errors->has('name'))
                            <div class="text-danger mt-2">
                                {{$errors->first('name')}}
                            </div>

                            @endif

                           </div>
                           <div class="form-group mb-3">
                                <input type="email" placeholder="@lang('lang.email')" class=
                                "form-control" name="email" value="{{old('email')}}">
                                @if($errors->has('email'))
                                    <div class="text-danger mt-2">
                                    {{$errors->first('email')}}
                                    </div>

                            @endif
                           </div>
                           <div class="form-group mb-3">
                                <input type="password" placeholder="@lang('lang.password')" class=
                                "form-control" name="password">
                                @if($errors->has('password'))
                                    <div class="text-danger mt-2">
                                    {{$errors->first('password')}}
                                    </div>

                            @endif

                           </div>

                           <div class="form-group mb-3">
                                <input type="text" placeholder="@lang('lang.name')" class=
                                "form-control" name="nom" value="{{old('nom')}}">
                            @if($errors->has('nom'))
                            <div class="text-danger mt-2">
                                {{$errors->first('nom')}}
                            </div>

                            @endif

                           </div>
                           <div class="form-group mb-3">
                                <input type="text" placeholder="@lang('lang.adresse')" class=
                                "form-control" name="adresse" value="{{old('adresse')}}">
                            @if($errors->has('adresse'))
                            <div class="text-danger mt-2">
                                {{$errors->first('adresse')}}
                            </div>

                            @endif

                           </div>
                           <div class="form-group mb-3">
                                <input type="phone"  placeholder="@lang('lang.phone')" class=
                                "form-control" name="phone" value="{{old('phone')}}">
                            <!-- @if($errors->has('phone'))
                            <div class="text-danger mt-2">
                                {{$errors->first('phone')}}
                            </div>

                            @endif -->

                           </div>
                           <div class="form-group mb-3">
                                <input type="date" placeholder="@lang('lang.dateDeNaissance')" class=
                                "form-control" name="dateDeNaissance" value="{{old('dateDeNaissance')}}">
                            @if($errors->has('dateDeNaissance'))
                            <div class="text-danger mt-2">
                                {{$errors->first('dateDeNaissance')}}
                            </div>

                            @endif

                           </div>
                          

                    
                    <div class="form-group mb-3">
                        <select class="custom-select form-control" name="ville_id">

                            <option  value="0">@lang('lang.selectCity')</option>
                            @foreach($villes as $ville)
                                <option  value="{{ $ville->id }}" class="form-control">{{ $ville->nomVille }}</option>
                            @endforeach
                        </select>
                    </div>

                

                           



                           <div class="d-grid mx-auto">
                                <input type="submit" placeholder="@lang('lang.sauvgarder')" class=
                                "btn btn-warning btn-block">
                            

                           </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

@endsection