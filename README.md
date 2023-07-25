# Hugo Docker Image

This is a Docker image of for the Hugo Static Page generator

# Build the image
```
docker build . -t openitcockpit/hugo:latest
```

# Usage

```
docker run --rm  -v /path/to/local/hugo:/src openitcockpit/hugo
```

You can find the final build files insode of `/path/to/local/hugo/public`



