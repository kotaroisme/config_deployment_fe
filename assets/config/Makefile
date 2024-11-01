ndef = $(if $(value $(1)),,$(error $(1) not set))
deploy:
	$(call ndef,TAG)
	$(call ndef,OWNER)
	@TAG=$(TAG) OWNER=$(OWNER)  docker compose -f docker-compose.yml down --volumes
	@docker volume prune -f
	@TAG=$(TAG) OWNER=$(OWNER)  docker compose -f docker-compose.yml up -d

restart:
	$(call ndef,TAG)
	$(call ndef,OWNER)
	@TAG=$(TAG) OWNER=$(OWNER)  docker compose -f docker-compose.yml down --volumes
	@docker volume prune -f
	@TAG=$(TAG) OWNER=$(OWNER)  docker compose -f docker-compose.yml up -d

stop:
	$(call ndef,TAG)
	$(call ndef,OWNER)
	@TAG=$(TAG) OWNER=$(OWNER)  docker compose -f docker-compose.yml down --volumes
	@docker volume prune -f
