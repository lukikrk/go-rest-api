DE=docker exec -it go

application:
	make install --no-print-directory

########################################################################################################################

bash:
	@$(DE) bash

down:
	docker compose down

install:
	docker compose up -d --build
	docker compose watch

logs:
	docker logs -f go

root:
	@echo '🕷 With great power comes great responsibility! 🕷'
	@docker exec -u root -it core_api bash

stop:
	docker compose stop

up:
	docker compose up -d
	@$(DE) make 2>&1 > /dev/null
