.PHONY: build serve

.docker: Dockerfile
	docker build --tag overpassbrass .
	touch .docker

Gemfile.lock: Gemfile .docker
	docker run --rm --volume="$$PWD:/srv/jekyll:Z" overpassbrass bundle install

build: Gemfile.lock
	docker run --rm --volume="$$PWD:/srv/jekyll:Z" --publish 4000:4000 overpassbrass jekyll build

serve: Gemfile.lock
	docker run --rm -it --volume="$$PWD:/srv/jekyll:Z" --publish 4000:4000 --publish 35729:35729 overpassbrass jekyll serve --livereload --drafts
