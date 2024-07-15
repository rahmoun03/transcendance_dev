all :
	docker compose up -d

down :
	docker compose down

clean : down
	docker system prune --all

re : clean all