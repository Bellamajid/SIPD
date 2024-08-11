<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PosyanduActivity extends Model
{
    use HasFactory;

    public function posyandu()
    {
        return $this->belongsTo(Posyandu::class);
    }

    public function officer()
    {
        return $this->belongsTo(Officer::class);
    }

    public function expectant_mother()
    {
        return $this->belongsTo(ExpectantMother::class);
    }
}
