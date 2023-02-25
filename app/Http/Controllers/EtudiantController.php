<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class EtudiantController extends Controller
{
    /**
     * afficher tous les etudiants du college
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::check()){
            $etudiants = DB::table('etudiants')
                ->join('villes', 'etudiants.ville_id', '=', 'villes.id')
                ->join('users', 'etudiants.users_id', '=', 'users.id')
                ->select('etudiants.*', 'villes.nomVille as ville', 'users.name as name')
                ->paginate(5);

            
           
            return view('etudiant.index', ['etudiants' => $etudiants]);
            }
            return redirect(route('login'))->withErrors('Vous devez vous connecté pour acceder a la liste d\'etudiants');
        
        
        
    }

    /**
     * /afficher le formulaire pour créer un etudiant du college
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $villes = Ville::all();
        return view('etudiant.create', ['villes' => $villes]);
        
    }

    /**
     * saisir un nouveau etudiant
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
    //     $request->validate([
    //         'nom' => 'required',
    //         'adresse' => 'required',
    //         'phone' => 'required|numeric|digits:10',
    //         'dateDeNaissance' => 'required|date_format:m/d/Y|before:today',
    //         'ville_id' => 'required',
    //                  
    // ]);
        $newEtudiant = Etudiant::create([
            'nom' => $request->nom,
            'adresse' => $request->adresse,
            'phone' => $request->phone,
            'ville_id' => $request->ville_id,
            'dateDeNaissance' => $request->dateDeNaissance   
        ]); 

        
        return redirect(route('show', $newEtudiant->id));
    }

    /**
     * afficher un etudiant du college
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
       
        return view('etudiant.show', ['etudiant' => $etudiant]);
    }

    /**
     * afficher le formulaire pour modifier un etudiant
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {
        
        $villes = Ville::all();
        
         return view('etudiant.edit', ['etudiant' => $etudiant, 'villes' => $villes]);


       
    }

    /**
     * enregistrer l'etudiant modifié
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        // $etudiants = DB::table('etudiants')
        //         ->join('villes', 'etudiants.ville_id', '=', 'villes.id')
        //         ->join('users', 'etudiants.users_id', '=', 'users.id')
        //         ->select('etudiants.*', 'villes.nomVille as ville', 'users.name as name')
        //         ->paginate(10);
        //
        $etudiant->update([
            
            'nom' => $request->nom,
           
            'adresse' => $request->adresse,
            'phone' => $request->phone,
           
            'ville_id' => $request->ville_id,
            'dateDeNaissance' => $request->dateDeNaissance  
        ]);
        return redirect(route('show', $etudiant->id));
    }

    /**
     * supprimer un etudiant
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        //
        $etudiant->delete();
        return redirect(route('index'));

    }

   
}


