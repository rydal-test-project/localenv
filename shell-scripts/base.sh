cp .env.example .env

chmod -R ugo+rwx storage;
chmod ugo+rwx .env;

php artisan storage:link;
php artisan key:generate;