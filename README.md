# rust-docker-env
This repository is for building a Rust environment.


## Features
- Uses a Docker image based on the official Rust image.
- Includes a non-root user (`rustuser`) to avoid permission issues.

## Usage
1. Build image
    ```
    docker image build --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -t rust-from-dockerfile .
    ```
1. Run & Attach container
    ```
    docker container run -it -v ./:/home/rustuser --rm --name rust-env rust-from-dockerfile /bin/bash
    ```
