<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App;


class ArticleController extends Controller
{
    /**
     * affiche tous les articles
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
        $articles = Article::select()->paginate(4);
        return view('article.index', ['article' => $articles]);


    }

    /**
     * affiche le formulaire pour créer un article
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('article.create');
    }

    /**
     * saisi un nouveau article
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
          
            'titre' => 'required|unique:articles|min:2',
            'contenu' => 'required',
            'titre_fr' => 'required|unique:articles|min:2',
            'contenu_fr' => 'required',
            

        ]);
        $newArticle = Article::create([

            'titre' => $request->titre,
            'titre_fr' => $request->titre_fr,
            'contenu' => $request->contenu,
            'contenu_fr' => $request->contenu_fr,
            'user_id' => $request->user_id,

        ]); 
        
        return redirect(route('liste.article'));
    }

    /**
     * affiche un article 
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function show(Article $article)
    {
        //
    }

    /**
     * affiche le formulaire pour modifier l'article
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        //
        $user_id = Auth::user()->id;
        if ($article['user_id'] === $user_id) {

            return view('article.edit', ['article' => $article]);

        }else {

            $articles = Article::selectArticles();
            return view('article.index', ['article' => $articles]);
        }
    }

    /**
     * enregistre l'article modifié
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

        $request->validate([
          
            'titre' => 'required|unique:articles|min:2',
            'titre_fr' => 'required|min:2|unique:articles',

        ]);
        $article = Article::find($id);
        $article->update([

            'titre' => $request->titre,
            'titre_fr' => $request->titre_fr,
            'contenu' => $request->contenu,
            'contenu_fr' => $request->contenu_fr,
            'user_id' => $request->user_id,
          
        ]);
        return redirect(route('liste.article'));
    }

    /**
     * supprimer un article
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        //
        $article->delete();
        return redirect(route('liste.article'));
    }

    
}
