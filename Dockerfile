FROM alpine:3.18 as builder
RUN apk update && apk add build-base cmake git ninja python3
ARG CLANG_FORMAT_VERSION
ENV CLANG_FORMAT_VERSION ${CLANG_FORMAT_VERSION:-16.0.3}
RUN git clone --branch "llvmorg-${CLANG_FORMAT_VERSION}" --depth 1 https://github.com/llvm/llvm-project.git
WORKDIR /llvm-project
RUN cmake -S llvm -B build -G Ninja \
  -DLLVM_ENABLE_PROJECTS=clang \
  -DLLVM_BUILD_STATIC=ON \
  -DCMAKE_BUILD_TYPE=MinSizeRel
RUN ninja -C build clang-format

FROM alpine:3.18
COPY --from=builder /llvm-project/build/bin/clang-format /usr/bin
WORKDIR /workspace
ENTRYPOINT ["clang-format"]
CMD ["--help"]
