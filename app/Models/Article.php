<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Article extends Model
{
    use HasFactory;

    protected $fillable = [

        'titre', 'titre_fr' , 'contenu', 'contenu_fr', 'user_id'
        
    ];

    
    static public function selectArticles($order = 'ASC'){

        $lang = session()->get('localeDB'); 
         if(session()->has('locale') && session()->get('locale') == 'fr'):
             $lang = '_fr';
             endif;      
        return Article::select('id', 'titre','titre_fr', 'user_id',
        DB::raw("(case when contenu$lang is null then contenu else contenu$lang end) as contenu"),DB::raw("(case when titre$lang is null then contenu else titre$lang end) as titre")
        )
        ->orderBy('titre', $order)
        ->get();
    }

}
