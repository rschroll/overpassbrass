.PHONY: build serve

Gemfile.lock: Gemfile
	docker run --rm --volume="$$PWD:/srv/jekyll:Z" jekyll/minimal:4.2.0 bundle install

build: Gemfile.lock
	docker run --rm --volume="$$PWD:/srv/jekyll:Z" --publish 4000:4000 jekyll/minimal:4.2.0 jekyll build

serve: Gemfile.lock
	docker run --rm -it --volume="$$PWD:/srv/jekyll:Z" --publish 4000:4000 --publish 35729:35729 jekyll/minimal:4.2.0 jekyll serve --livereload --drafts