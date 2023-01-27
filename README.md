# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Docker
* Build the image
`docker build -t rubyreads -f docker/Dockerfile .`

* Start the server
`docker run -d --name rubyreads -p 3000:3000 -v `pwd`:/srv --rm rubyreads`

* Stop the server
`docker stop rubyreads`

* Kill the server
`docker kill rubyreads`

* Tail the logs
`docker logs -f rubyreads`

* Get a terminal inside the container
`docker run -v `pwd`:/srv --rm -it rubyreads /bin/bash`

* Rails console
`docker run -v `pwd`:/srv --rm -it rubyreads rails c`
