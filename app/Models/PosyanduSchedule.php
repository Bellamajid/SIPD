<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PosyanduSchedule extends Model
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

    protected function time(): Attribute
    {
        return Attribute::make(
            get: fn (mixed $value, array $attributes) => Carbon::parse($attributes['date'])->format('H:i'),
        );
    }

    protected function monthYear(): Attribute
    {
        return Attribute::make(
            get: fn (mixed $value, array $attributes) => Carbon::parse($attributes['date'])->format('Y-m'),
        );
    }
}
