setup-database:
	docker compose exec db mysql -proot -e "CREATE DATABASE IF NOT EXISTS ecommerce"
	cat database/schema.sql | docker compose exec -T db mysql -proot ecommerce
