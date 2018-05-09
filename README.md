## Project Skeleton for Go with Dep and Docker

### Running with Go
  - Step 1, install Dep https://golang.github.io/dep/

  - Step 2, install dependencies

  ```shell
  dep ensure
  ```

### Running with Docker
  - Step 1

  ```shell
  make docker
  ```

  - Step 2

  ```shell
  docker run --rm go-awesome-dep
  ```

###
2018 Purwokerto Dev
