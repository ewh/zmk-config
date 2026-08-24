COMPOSE := podman-compose -f podman/compose.yaml
SERVICE := zmk-ewh
CONTAINER := zmk-ewh-dev

.PHONY: build run-once launch attach rm

build:
	$(COMPOSE) build

run-once:
	$(COMPOSE) run --rm $(SERVICE)

launch:
	$(COMPOSE) run --name $(CONTAINER) $(SERVICE)

attach:
	podman start -ai $(CONTAINER)

rm:
	podman rm $(CONTAINER)
