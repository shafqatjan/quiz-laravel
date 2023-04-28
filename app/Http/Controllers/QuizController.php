<?php

namespace App\Http\Controllers;

use App\Models\Question;
use App\Models\User;
use App\Models\UserQuestionAnswer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class QuizController extends Controller
{
    
    public function index()
    {
        return view('form');
    }

   
    public function generate_quiz(Request $request)
    {
        $questions = Question::inRandomOrder()->limit(10)->get();
        $quiz_html = "";
        $qn = 1;
        if ($questions) {
            foreach ($questions as $question) {
                unset($question->correct_option_id);
                $options = $question->options->pluck('option', 'id')->toArray() ;
                //shuffle($options);
                $question->options = $options;
                $quiz_html .= view('quiz', compact('question', 'qn'))->render();

                $qn++;
            }
        }

      
        return response()->json(['questions' => $quiz_html]);
    }


    public function save_quiz(Request $req)
    {
    
        if ($req->name) {
            $user = User::updateOrCreate(['name' => $req->name]);
            if ($req->question) {
                foreach ($req->question as $question_id => $option_id) {
                    $answer = UserQuestionAnswer::updateOrCreate([
                        'user_id' => $user->id,
                        'question_id' => $question_id
                    ]);

                    if ($option_id == '0') {
                        $answer->option_id = NULL;

                        $answer->result = "S";
                    } else {
                        $answer->option_id = $option_id;

                        $answer->result = $answer->question->correct_option_id == $option_id ? "C" : "I";
                    }
                   
                    $answer->save();
                }

                $results = UserQuestionAnswer::select(DB::raw('result, count(result) as count'))->where('user_id', $user->id)->groupBy('result')->get()->pluck('count', 'result')->toArray();
                
                $result_html = view('result', compact('user','results'))->render();

                return response()->json(['html' => $result_html]);
               
            }
        }
    }
}
