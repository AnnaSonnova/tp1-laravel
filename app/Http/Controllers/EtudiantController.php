<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
            $etudiants = Etudiant::select()->paginate(10);
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
        //
        //exit($request->dateDeNaissance);
    //     $request->validate([
          
    //         'nom' => 'required',
    //         'prenom' => 'required',
    //         'adresse' => 'required',
    //         'phone' => 'required|numeric|digits:10',
    //         //'dateDeNaissance' => 'required|date_format:m/d/Y|before:today',
    //         'ville_id' => 'required',
    //         'email' => 'required|email|unique:etudiants',
            
            
    // ]);

        $newEtudiant = Etudiant::create([

            'nom' => $request->nom,
            'prenom' => $request->prenom,
            'adresse' => $request->adresse,
            'phone' => $request->phone,
            'email' =>  $request->email,
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
        //
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
        //
        $etudiant->update([
            
            'nom' => $request->nom,
            'prenom' => $request->prenom,
            'adresse' => $request->adresse,
            'phone' => $request->phone,
            'email' =>  $request->email,
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

    // public function page()
    //     $query = Etudiant::select()
    //         ->paginete(10);
    //         return view('blog.page', ['etudiants'=>$etudiants]);
        
    // }
}

// select*from blog_post Limit  10
// select*from blog_post Limit 10 10
// select*from blog_post Limit 20 10
