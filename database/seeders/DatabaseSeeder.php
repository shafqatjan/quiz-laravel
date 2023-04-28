<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Option;
use App\Models\Question;
use App\Models\QuestionCategory;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // insert categories
        $data = [
            'PHP' => [
                'What is PHP?' => [
                    'A programming language for web development',
                    'A markup language for creating web pages',
                    'A database management system',
                    'A server-side scripting language for desktop applications'
                ]
            ]

        ];

        foreach ($data as $category_name => $questions_arr) {
            $question_category = QuestionCategory::updateOrCreate([
                'name' => $category_name,
            ]);

            foreach ($questions_arr as $question => $options_arr) {
                $question = Question::updateOrCreate([
                    'question' => $question,
                    'question_category_id' => $question_category->id
                ]);
                foreach ($options_arr as $option) {
                    $otion = Option::updateOrCreate([
                        'option' => $option
                    ]);
                }
            }
        }
    }
}
