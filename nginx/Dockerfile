# nginx/Dockerfile
ARG NGINX_VERSION=1.27.5

# ---------- Builder: compile geoip2 module ----------
FROM alpine:3.20 AS builder
ARG NGINX_VERSION

RUN apk add --no-cache \
  build-base linux-headers \
  pcre2-dev zlib-dev openssl-dev \
  libmaxminddb-dev \
  git wget

WORKDIR /build

# NGINX source
RUN wget -qO- "http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz" | tar -xz

# GeoIP2 module source
RUN git clone --depth 1 https://github.com/leev/ngx_http_geoip2_module.git

WORKDIR /build/nginx-${NGINX_VERSION}

# Configure ONLY what we need to build a dynamic module
# (keep it minimal so Alpine packaging flags don't break the build)
RUN ./configure \
  --with-compat \
  --add-dynamic-module=../ngx_http_geoip2_module

RUN make modules


# ---------- Runtime: nginx + module + mmdb ----------
FROM nginx:${NGINX_VERSION}-alpine

RUN apk add --no-cache libmaxminddb bash curl jq

# Copy the compiled module
COPY --from=builder /build/nginx-${NGINX_VERSION}/objs/ngx_http_geoip2_module.so \
  /etc/nginx/modules/ngx_http_geoip2_module.so

# Bake GeoLite2 DBs into the image from your repo
RUN mkdir -p /etc/nginx/geoip /etc/nginx/runtime
COPY nginx/geolite2-city-ipv4.mmdb /etc/nginx/geoip/geolite2-city-ipv4.mmdb
COPY nginx/geolite2-city-ipv6.mmdb /etc/nginx/geoip/geolite2-city-ipv6.mmdb
