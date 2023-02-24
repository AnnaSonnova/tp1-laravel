<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Document extends Model
{
    use HasFactory;
    protected $fillable = [

        'titre', 'titre_fr' , 'document', 'user_id'
        
    ];

    public function selectDocument($order = 'ASC') {
        $lang = session()->get('localeDB');

        $query = Document::select( 'id', 'titre','titre_fr', 'user_id',
        DB::raw("(case when titre$lang is null then titre else titre$lang end) as titre")
       )
        ->orderby('titre', $order)
        ->get();
        return $query;
        }
       

       
}
