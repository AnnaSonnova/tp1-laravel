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
        return Article::select('id', 'titre','titre_fr', 'user_id',
        DB::raw("(case when contenu$lang is null then contenu else contenu$lang end) as contenu")
        )
        ->orderBy('titre', $order)
        ->get();
    }

}
