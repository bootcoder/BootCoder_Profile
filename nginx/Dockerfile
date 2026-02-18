# nginx/Dockerfile
ARG NGINX_VERSION=1.27.5

# ---------- Builder: compile geoip2 module against exact nginx source ----------
FROM nginx:${NGINX_VERSION}-alpine AS builder
ARG NGINX_VERSION

RUN apk add --no-cache \
  git \
  build-base \
  linux-headers \
  pcre2-dev \
  zlib-dev \
  openssl-dev \
  libmaxminddb-dev

WORKDIR /build

# Fetch the exact nginx source matching the image version
RUN wget -qO- "http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz" | tar -xz

# Fetch GeoIP2 module source
RUN git clone --depth 1 https://github.com/leev/ngx_http_geoip2_module.git

# Get the configure args from the running nginx binary in this image
# and re-use them so the module is compatible.
RUN nginx -V 2>&1 | sed -n 's/^configure arguments: //p' > /build/nginx_configure_args.txt

WORKDIR /build/nginx-${NGINX_VERSION}

# Configure nginx source with the same args, adding the geoip2 dynamic module
RUN ./configure \
  $(cat /build/nginx_configure_args.txt) \
  --add-dynamic-module=../ngx_http_geoip2_module

# Build only the dynamic modules
RUN make modules

# ---------- Runtime: copy module into a clean nginx image ----------
FROM nginx:${NGINX_VERSION}-alpine
ARG NGINX_VERSION

# Runtime deps
RUN apk add --no-cache \
  bash curl jq libmaxminddb \
  nginx-mod-http-geoip2

# Copy the compiled module
COPY --from=builder /build/nginx-${NGINX_VERSION}/objs/ngx_http_geoip2_module.so /etc/nginx/modules/ngx_http_geoip2_module.so

# Bake GeoLite2 DBs into the image (from your repo)
COPY ./nginx/geolite2-city-ipv4.mmdb /etc/nginx/geoip/geolite2-city-ipv4.mmdb
COPY ./nginx/geolite2-city-ipv6.mmdb /etc/nginx/geoip/geolite2-city-ipv6.mmdb

# Create runtime dir for your CloudFront realip file
RUN mkdir -p /etc/nginx/runtime
