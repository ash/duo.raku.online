---
title: Використання docker
---

{% include menu.html %}

Є docker-образ Rakudo. Він називається `rakudo-star` з історичних причин. Ви можете використати його, щоб запустити оболонку REPL. Ви також можете запустити з ним програму з файлу.

Виконайте цю команду, щоб запустити оболонку. Якщо треба, вона завантажує останній образ `rakudo-star`.

```console
$ docker run -it rakudo-star
```
Щоб виконати програму, використовуйте наступну команду:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Хочете прибрати все після зупинки контейнера? Тоді додайте прапорець `--rm`. Він видаляє контейнер і його файлову систему. Більше інструкцій ви знайдете на сторінці проєкту.

## Зовнішні посилання

* [Образ Docker](https://hub.docker.com/_/rakudo-star/)
* [Проект Raku Docker на GitHub](https://github.com/Raku/docker)

{% include nav.html %}
