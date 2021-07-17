cp .env.example .env

chmod -R ugo+rwx storage/logs;
chmod -R ugo+rwx storage/framework/cache;

php artisan storage:link;
php artisan key:generate;