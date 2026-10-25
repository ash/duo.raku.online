---
title: Използване на Docker
---

{% include menu.html %}

Има Docker изображение на Rakudo. То се казва `rakudo-star` по исторически причини. Можете да го използвате, за да стартирате REPL shell. С него можете и да изпълните програма от файл.

Изпълнете тази команда, за да стартирате shell. Ако трябва, тя изтегля последното изображение `rakudo-star`.

```console
$ docker run -it rakudo-star
```
За да изпълните програма, използвайте следната команда:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Искате ли да почистите, след като контейнерът спре? Тогава добавете флага `--rm`. Той премахва контейнера и неговата файлова система. Можете да намерите повече инструкции на страницата на проекта.

## Външни връзки

* [Docker изображение](https://hub.docker.com/_/rakudo-star/)
* [Raku docker проект в GitHub](https://github.com/Raku/docker)

{% include nav.html %}
