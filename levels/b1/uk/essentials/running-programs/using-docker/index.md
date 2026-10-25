---
title: Використання docker
---

{% include menu.html %}

Є docker-образ Rakudo, який з історичних причин називається `rakudo-star`. Його можна використовувати для запуску оболонки REPL. Також з ним можна виконати програму з файлу.

Щоб запустити оболонку, виконайте таку команду. Якщо потрібно, вона завантажить останній образ `rakudo-star`.

```console
$ docker run -it rakudo-star
```
Щоб виконати програму, використовуйте наступну команду:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Щоб очистити контейнер, коли він завершує роботу, додайте прапорець `--rm`. Тоді його файлова система теж видаляється. Більше інструкцій можна знайти на сторінці проєкту.

## Зовнішні посилання

* [Образ Docker](https://hub.docker.com/_/rakudo-star/)
* [Проект Raku Docker на GitHub](https://github.com/Raku/docker)

{% include nav.html %}
