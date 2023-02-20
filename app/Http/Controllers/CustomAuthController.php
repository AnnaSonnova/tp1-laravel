<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Http\Request;

// use DB;
use Illuminate\Support\Facades\DB;

class CustomAuthController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('auth.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('auth.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required|email|unique:users',
            'password' => 'required|min:6|max:20',
        //     'password' => 'required|min:2|max:20|alpha_num|confirmed|regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/',
        // 'password_confirmation' => 'required|same:password',
        ]);
        $user = new User;
        $user->fill($request->all());
        $user->password = Hash::make($request->password);
        $user->save();

        return redirect(route('login'))->withSuccess('User enregistré');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function authentication(Request $request)
    {
        $request->validate([
            'email'=>'required|email|exists:users',
            'password' => 'required|min:6|max:20'
        ]);
        $credentials = $request->only('email', 'password');
        if(!Auth::validate($credentials)):
            return redirect(route('login'))
            ->withErrors(trans('auth.failed'))
            ->withInput();//withErrors se trouve dans resources/lang/auth/    'failed' => 'These credentials do not match our records.'   withInput-pour retourner la valeur
        endif;
        $user = Auth::getProvider()->retrieveByCredentials($credentials);
        Auth::login($user, $request->get('remember'));

        return redirect()->intended('dashboard')->withSuccess('Signed in');
       
    }

    public function dashboard(){

        $name = 'Guest';
        if(Auth::check()){
        $name = Auth::user()->name;
        return view('welcome', ['name' =>$name]);
        }
      return redirect(route('login'))->withErrors('Vous n/est pas connecter');

    }

    public function logout(){
        Session::flush();
        Auth::logout();
        return redirect(route('login'));
        }
       
}