git clone https://github.com/shafqatjan/quiz-laravel.git


composer update


php artisan migrate --seed


php artisan optimize:clear

import database (find in root folder "quiz.sql")  and update your .env 

php artisan serve