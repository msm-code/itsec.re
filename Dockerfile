FROM klakegg/hugo:0.82.0 as hugo

WORKDIR /src
COPY . .
RUN hugo

FROM nginx:1.19
COPY --from=hugo /src/public /usr/share/nginx/html
