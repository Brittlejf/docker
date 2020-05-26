FROM alpine:latest

RUN apk --no-cache -U add git curl bash
RUN curl -fLSs https://raw.githubusercontent.com/CircleCI-Public/circleci-cli/master/install.sh | bash

CMD ["/bin/bash"]
