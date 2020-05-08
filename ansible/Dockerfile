FROM alpine:latest

RUN apk --no-cache -U add ansible ansible-lint git

ENTRYPOINT ["ansible-lint"]
