# Makefile for deploying blog.aaronbieber.com.

OPTS=-rovWz --delete
EXCLUDE=--exclude '.git*' --exclude '.*' --exclude '\#*\#' --exclude Makefile
SRC=./public/
DEST=airborne@10.20.10.40:/var/www/singleservingphoto.com/htdocs/

build:
	hugo --cleanDestinationDir

deploy: build
	rsync $(OPTS) $(EXCLUDE) $(SRC) $(DEST)
