# firef0x/docker-cnpmjs-oss:2.19.2

## Introduction

Dockerfile to build a container image of [cnpmjs.org](https://cnpmjs.org/), the "Company NPM" by alibaba ![cnpmjs.org-version-badge](https://img.shields.io/badge/cnpm-2.19.2-blue.svg?style=flat-square), with [oss-cnpm](https://npmjs.org/package/oss-cnpm) ![oss-cnpm-version-badge](https://img.shields.io/npm/v/oss-cnpm.svg?style=flat-square) support.

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/firef0x/docker-cnpmjs-oss/) and is the recommended method of installation.

## Quick Start

```
$ docker run --name cnpmjs -d \
	--publish 7001:7001 \
	--publish 7002:7002 \
	--volume /srv/docker/cnpmjs/cnpmjs/config/config.js:/var/app/cnpmjs.org/config/config.js \
	--volume /srv/docker/cnpmjs/cnpmjs/docs:/var/app/cnpmjs.org/docs/web \
	--volume /srv/docker/cnpmjs/cnpmjs/data:/var/www \
	--restart always \
	firef0x/docker-cnpmjs-oss:2.19.2

```

## With MySQL as database

```
$ docker run --name cnpmjs -d \
    --link cnpmjs-mysql:mysql \
	--publish 7001:7001 \
	--publish 7002:7002 \
	--volume /srv/docker/cnpmjs/cnpmjs/config/config.js:/var/app/cnpmjs.org/config/config.js \
	--volume /srv/docker/cnpmjs/cnpmjs/docs:/var/app/cnpmjs.org/docs/web \
	--volume /srv/docker/cnpmjs/cnpmjs/data:/var/www \
	--restart always \
	firef0x/docker-cnpmjs-oss:2.19.2

$ docker run --name cnpmjs-mysql -d \
	--volume /srv/docker/cnpmjs/mysql/conf:/etc/mysql/conf.d \
	--volume /srv/docker/cnpmjs/mysql/data:/var/lib/mysql \
	--env MYSQL_ROOT_PASSWORD=YOUR_PASSWORD \
	--publish 3306:3306 \
	--restart always \
	mysql:latest
```

## Contributors

- [Albert 理斯特](https://github.com/hbrls)
- [Firef0x](https://github.com/Firef0x)

## Reference

1. [GitHub: cnpm/cnpmjs.org](https://github.com/cnpm/cnpmjs.org)
2. [跟我一起部署和定制 CNPM——基础部署](http://f2e.souche.com/blog/let-cnpm-base-deploy/)
3. [Deploy a private npm registry in 5 minutes](https://github.com/cnpm/cnpmjs.org/wiki/Deploy-a-private-npm-registry-in-5-minutes)
4. [CNPM 搭建私有 NPM 服务](https://github.com/luqin/blog/issues/3)
