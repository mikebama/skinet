help:
	cat ./Makefile

fake-push:
	# start act github simulator with push using the act docker image
	docker run --rm -v "$(pwd)":/github/workspace --env-file .env --env-file ghcr.io/nektos/act:latest push
