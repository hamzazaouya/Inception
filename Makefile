path=srcs/docker-compose.yml

all:
	rm -fr /home/hazaouya/data/wp_data/*
	rm -fr /home/hazaouya/data/db_data/*
	docker-compose -f $(path) up --build -d
down:
	docker-compose -f $(path) down
up:
	docker-compose -f $(path) up -d
rm:
	docker-compose -f $(path) down --volume
	docker system prune -af
