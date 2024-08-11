<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Posyandu extends Model
{
    use HasFactory;

    public function officer()
    {
        return $this->hasOne(Officer::class)->where('is_headmaster', 1);
    }

    public function expectant_mothers()
    {
        return $this->hasMany(ExpectantMother::class);
    }

    public function officers()
    {
        return $this->hasMany(Officer::class);
    }

    public function posyandu_activities()
    {
        return $this->hasMany(PosyanduActivity::class);
    }

    public function nurses()
    {
        return $this->hasMany(Nurse::class);
    }
}
