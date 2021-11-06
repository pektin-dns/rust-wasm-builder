FROM rust:alpine
RUN apk add musl-dev openssl-dev gcc curl git npm gcc ca-certificates libc6-compat binaryen nodejs
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
COPY . .
ENTRYPOINT sh build.sh

