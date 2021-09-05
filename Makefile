dc-init:
	@make dc-start
	@make dc-back-base

dc-start:
	@docker-compose up --build --detach

dc-back-base:
	@docker-compose exec backend bash shell-scripts/base.sh

dc-db-init:
	@make dc-db-fresh
	@make dc-db-migrate
	@make dc-db-seed
	@docker-compose exec backend bash shell-scripts/lara-passort-init.sh

dc-db-fresh:
	@docker-compose exec backend bash shell-scripts/db-fresh.sh
dc-db-migrate:
	@docker-compose exec backend bash shell-scripts/db-migrate.sh
dc-db-seed:
	@docker-compose exec backend bash shell-scripts/db-seed.sh
