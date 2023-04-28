<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserQuestionAnswer extends Model
{
    use HasFactory;
    protected $table = 'user_question_answers';
    protected $fillable = ['user_id', 'question_id', 'option_id'];
    
    public function question()
    {
        return $this->belongsTo(Question::class, 'question_id', 'id');
    }      

}
