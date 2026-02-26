FROM floryn90/hugo:latest

WORKDIR /src
COPY . .
RUN hugo --gc --minify -d /dist

