build-apache-debian:
  docker buildx bake --load --set apache-debian-latest.platform=linux/amd64 apache-debian-latest

show-apache-debian-tags:
  docker buildx bake --print apache-debian-latest | jq -r '.target["apache-debian-latest"].tags[]'
