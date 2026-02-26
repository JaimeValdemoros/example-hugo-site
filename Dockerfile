FROM ghcr.io/gohugoio/hugo:v0.136.5

# Undo custom user from base image, otherwise
# hugo can't write output files
USER root:root

# Copy source files
WORKDIR /src
COPY . .

# Run build
RUN hugo --gc --minify -d /dist

