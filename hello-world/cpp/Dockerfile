FROM gcc:9.5

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN gcc -std=c++17 -o main main.cpp

CMD ["./main"]
