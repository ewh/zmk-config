COMPOSE := podman-compose -f podman/compose.yaml
CONTAINER := zmk-ewh-dev

.PHONY: build run-once launch attach rm

build:
	$(COMPOSE) build

run-once:
	$(COMPOSE) run --rm zmk-ewh

launch:
	$(COMPOSE) run --name $(CONTAINER) zmk-ewh

attach:
	podman start -ai $(CONTAINER)

rm:
	podman rm $(CONTAINER)
