# An Appwrite template on Gitpod

This is a [Appwrite](https://appwrite.io/) template configured for ephemeral development environments on [Gitpod](https://www.gitpod.io/).

https://github.com/appwrite/integration-for-gitpod

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/dotvue/appwrite-gitpod)

## Get Started With Your Own Project

### A new project

Click the above "Open in Gitpod" button to start a new workspace. Once you're ready to push your first code changes, Gitpod will guide you to fork this project so you own it.

### An existing project

To get started with Docker Compose on Gitpod, copy the contents of this folder to your own project. To learn more, please see the [Getting Started](https://www.gitpod.io/docs/getting-started) documentation.

## docker-compose

- 在后台运行服务容器：docker compose up -d --remove-orphans
- 停止运行服务容器：docker compose stop
- 停止并删除服务容器：docker compose down -v
- 删除所有的镜像：docker rmi -f $(docker images -aq)
- 删除所有未使用的卷：docker volume prune -f
- 删除所有容器和镜像：https://blog.csdn.net/weixin_44251065/article/details/125222978
- Docker — 从入门到实践：https://yeasy.gitbook.io/docker_practice/

## backup and restore

- chmod +x backup.sh, ./backup.sh
- chmod +x restore.sh, ./restore.sh
