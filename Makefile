default:
	cat ./Makefile

jekyll:
	bundle exec jekyll serve

up:
	docker-compose up

down:
	docker-compose down