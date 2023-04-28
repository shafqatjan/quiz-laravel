<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('questions', function (Blueprint $table) {
            $table->unsignedBigInteger('correct_option_id')->after('question_category_id')->nullable();

            $table->foreign('correct_option_id')->references('id')->on('options');
            $table->index('correct_option_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('questions', function (Blueprint $table) {
            $table->dropForeign('questions_correct_option_id_foreign');
            $table->dropIndex('questions_correct_option_id_index');

            $table->dropColumn('correct_option_id');
        });
    }
};
