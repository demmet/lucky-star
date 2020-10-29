up:
	@docker-compose up -d

bash:
	@docker exec -it luckystar bash

sv:
	@bin/rails s -b 0.0.0.0

upb: up bash