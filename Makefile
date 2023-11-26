help:
	@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/##//' | tail -n +2

hello-world-bash: ## Run Bash Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/bash && docker build -t bash-app . && docker run --rm bash-app && echo "\n")

hello-world-c: ## Run C Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/c && docker build -t c-app . && docker run --rm c-app && echo "\n")

hello-world-cobol: ## Run COBOL Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/cobol && docker build -t cobol-app . && docker run --rm cobol-app && echo "\n")

hello-world-cpp: ## Run C++ Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/cpp && docker build -t cpp-app . && docker run --rm cpp-app && echo "\n")

hello-world-csharp: ## Run C# Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/csharp && docker build -t csharp-app . && docker run --rm csharp-app && echo "\n")

hello-world-elixir: ## Run Elixir Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/elixir && docker build -t elixir-app . && docker run --rm elixir-app && echo "\n")

hello-world-go: ## Run Go Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/go && docker build -t go-app . && docker run --rm go-app && echo "\n")

hello-world-haskell: ## Run Haskell Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/haskell && docker build -t haskell-app . && docker run --rm haskell-app && echo "\n")

hello-world-java: ## Run Java Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/java && docker build -t java-app . && docker run --rm java-app && echo "\n")

hello-world-javascript: ## Run JavaScript Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/javascript && docker build -t javascript-app . && docker run --rm javascript-app && echo "\n")

hello-world-kotlin: ## Run Kotlin Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/kotlin && docker build -t kotlin-app . && docker run --rm kotlin-app && echo "\n")

hello-world-lua: ## Run Lua Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/lua && docker build -t lua-app . && docker run --rm lua-app && echo "\n")

hello-world-php: ## Run PHP Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/php && docker build -t php-app . && docker run --rm php-app && echo "\n")

hello-world-python: ## Run Python Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/python && docker build -t python-app . && docker run --rm python-app && echo "\n")

hello-world-r: ## Run R Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/r && docker build -t r-app . && docker run --rm r-app && echo "\n")

hello-world-ruby: ## Run Ruby Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/ruby && docker build -t ruby-app . && docker run --rm ruby-app && echo "\n")

hello-world-rust: ## Run Rust Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/rust && docker build -t rust-app . && docker run --rm rust-app && echo "\n")

hello-world-scala: ## Run Scala Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/scala && docker build -t scala-app . && docker run --rm scala-app && echo "\n")

hello-world-typescript: ## Run TypeScript Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/typescript && docker build -t typescript-app . && docker run --rm typescript-app && echo "\n")

hello-world-zig: ## Run zig Hello World
	(export DOCKER_CLI_HINTS=false && cd ./hello-world/zig && docker build -t zig-app . && docker run --rm zig-app && echo "\n")

.PHONY: hello-world
