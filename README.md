# PlantUML on Docker

[Docker Hub](https://hub.docker.com/r/pyar6329/plantuml)

```bash
$ docker run --rm -v $(pwd):/data pyar6329/plantuml:latest -tsvg erd.pu
```

```bash
$ docker run --rm -v $(pwd):/data -e "PLANTUML_LIMIT_SIZE=8192" pyar6329/plantuml:latest erd.pu
```
