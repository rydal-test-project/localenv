cp .env.example .env

chmod -R ugo+rwx ./;
chmod ugo+rwx .env;

php artisan storage:link;
php artisan key:generate;