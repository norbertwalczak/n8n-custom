FROM n8nio/n8n:latest

ARG CUSTOM_MODULES

USER root
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install -g $CUSTOM_MODULES

USER node

CMD ["n8n start"]