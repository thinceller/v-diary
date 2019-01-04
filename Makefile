# api command
api-build:
	docker build -t hello ./api

api-run:
	docker run -it --rm -p 3000:3000 hello

api-start: build run