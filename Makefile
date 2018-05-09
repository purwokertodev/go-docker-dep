.PHONY : docker
docker: Dockerfile
	docker build -t go-awesome-dep:latest .

.PHONY : awesome-dep-osx
awesome-dep-osx: main.go
	GOOS=darwin GOARCH=amd64 go build -ldflags '-s -w' -o $@

.PHONY : awesome-dep-linux
awesome-dep-linux: main.go
	GOOS=linux GOARCH=amd64 go build -ldflags '-s -w' -o $@
