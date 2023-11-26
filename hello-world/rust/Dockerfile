FROM rust:1.74

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN cargo build --release

CMD ["./target/release/advent-of-code-2023"]
