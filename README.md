## Introduction
This project provide a `clang-format` docker image for local or ci usage.

## Docker Hub
The Docker image for this project has been published on Docker Hub and can be accessed [here](https://hub.docker.com/r/godhand4826/clang-format).

## Source Code
The source code for `clang-format` can be found in the [llvm/llvm-project](https://github.com/llvm/llvm-project).


## Dockerfile Usage
To use the Dockerfile and build the Docker image, follow these steps:
1. Install Docker on your machine if you haven't already.
2. Clone this repository: `https://github.com/godhand4826/clang-format.git`
3. Navigate to the project directory: `cd clang-format`
4. Build the Docker image: `docker build -t clang-format .`
5. Run the Docker container: `docker run -it clang-format --version`

## Docker Image Usage
1. Install Docker on your machine if you haven't already.
2. Pull the Docker image: `docker pull godhand4826/clang-format`
3. Run the Docker container: `docker run -it -v "$(pwd)":/workdir godhand4826/clang-format --version`

## Contributing
If you would like to contribute to this project, please follow these guidelines:
- Fork the repository.
- Create a new branch for your feature or bug fix.
- Make your changes and commit them with descriptive messages.
- Push your changes to your forked repository.
- Submit a pull request, explaining your changes.
