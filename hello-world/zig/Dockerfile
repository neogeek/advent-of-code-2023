FROM ziglang/static-base:llvm15-aarch64-3

COPY . /usr/src/app

WORKDIR /usr/src/app

ENV PATH $PATH:/deps/local/bin

CMD ["zig", "run", "main.zig"]
