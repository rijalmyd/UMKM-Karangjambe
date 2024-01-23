<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Transaction;

class Status extends Model
{
    use HasFactory;

    protected $fillable = ['title'];

    public function transaction(){
        return $this->hasMany(Transaction::class);
    }
}