<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Ville;
use App\Models\User;

class Etudiant extends Model
{
    use HasFactory;
    protected $fillable = [
        'nom',
         
        'email', 
        'adresse', 
        'phone',
        'dateDeNaissance',
        'ville_id',
        'users_id'
        
    ];

    public function ville (){

        //return $this->hasOne('App\Models\Ville', 'id' ,'ville_id');
        return $this->belongsTo(Ville::class);

    }

    public function user (){

        //return $this->hasOne('App\Models\Ville', 'id' ,'ville_id');
        return $this->belongsTo(User::class);

    }
}


