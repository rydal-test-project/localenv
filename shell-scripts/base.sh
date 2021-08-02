cp .env.example .env

chmod -R ugo+rwx storage;

php artisan storage:link;
php artisan key:generate;
