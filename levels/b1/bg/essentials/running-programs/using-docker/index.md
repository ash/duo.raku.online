---
title: Използване на Docker
---

{% include menu.html %}

Има Docker изображение на Rakudo, наречено `rakudo-star` по исторически причини. Можете да го използвате, за да стартирате REPL shell. С него можете и да изпълните програма от файл.

Изпълнете следната команда, за да стартирате shell. Ако е необходимо, тя ще изтегли последното изображение `rakudo-star`.

```console
$ docker run -it rakudo-star
```
За да изпълните програма, използвайте следната команда:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

За да почистите контейнера, когато той излезе, добавете флага `--rm`. Тогава се премахва и файловата му система. Можете да намерите повече инструкции на страницата на проекта.

## Външни връзки

* [Docker изображение](https://hub.docker.com/_/rakudo-star/)
* [Raku docker проект в GitHub](https://github.com/Raku/docker)

{% include nav.html %}
