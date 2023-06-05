# Go Server

## Gerar a imagem

```zsh
docker build -t celsopires/goserver:latest .
```

## Subir o container

```zsh
docker-compose -f docker-compose.prod.yaml up -d
```

## Entrar no container

```zsh
docker compose -f docker-compose.prod.yaml exec app bash
```

## Encerrar o container

```zsh
docker compose -f docker-compose.prod.yaml down
```

## Enviar a imagem para o dockerhub

```zsh
docker push celsopires/goserver:latest
```

## Resultado

```zsh
aluno in ~/professor/go-rest-api-server
-> docker push celsopires/goserver:latest
The push refers to repository [docker.io/celsopires/goserver]
d61be59e8ed6: Pushed
8dd21543f213: Pushed
6f37ca73c74f: Mounted from library/ubuntu
latest: digest: sha256:7f3bb779796e7b0873512372ad62d59e2facc73a376b7c3050fdab097dba07ea size: 947
aluno in ~/professor/go-rest-api-server took 10s
->
```
