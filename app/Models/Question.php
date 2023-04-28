<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    protected $table = "questions";

    public function options()
    {
        return $this->hasMany(Option::class)->inRandomOrder();
    }
    public function category()
    {
        // return $this->belongsTo(QuestionCategory::class, 'group_id', 'id')->orderBy('id', 'asc');
    }
}
