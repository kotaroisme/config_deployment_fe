FROM node:22-alpine as base

ENV ROOT="/web" \
    NODE_ENV="production" \
    PORT="3000"

WORKDIR $ROOT

COPY package*.json yarn.lock .yarnrc.yml .npmrc $ROOT/
COPY .yarn $ROOT/.yarn

# Install dependencies
FROM base as builder
RUN yarn install --immutable
COPY . .
RUN yarn add @rollup/rollup-linux-arm64-musl
RUN yarn build

# Run
FROM base
COPY --from=builder $ROOT/build $ROOT/.output
COPY --from=builder $ROOT/node_modules node_modules/
EXPOSE $PORT
CMD ["node", ".output"]
