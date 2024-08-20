FROM nikolaik/python-nodejs:python3.10-nodejs18-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/serverless/github-action"
LABEL homepage="https://github.com/serverless/github-action"
LABEL maintainer="Serverless, Inc. <hello@serverless.com> (https://serverless.com)"

LABEL "com.github.actions.name"="Serverless"
LABEL "com.github.actions.description"="Wraps the Serverless Framework to enable common Serverless commands."
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="red"

RUN npm i -g serverless@3.x
RUN npm i -g @serverless/compose@latest
RUN serverless plugin install -n serverless-python-requirements
ENTRYPOINT ["serverless"]
