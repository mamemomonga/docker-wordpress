all: init
	docker-compose up -d
	@echo "---------------------------------------"
	@echo "  http://localhost:8000/ で起動"
	@echo "  docker-compose logs -f でログ表示"
	@echo "---------------------------------------"

init:
	bin/helper init

clean:
	docker-compose down --volume
	rm -f .env

export:
	bin/helper export


import:
	bin/helper import

