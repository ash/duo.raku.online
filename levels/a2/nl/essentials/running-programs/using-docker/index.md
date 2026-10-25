---
title: Gebruik van docker
---

{% include menu.html %}

Er is een docker-image van Rakudo. Het heet `rakudo-star`, om historische redenen. Je kunt het gebruiken om een REPL-shell te starten. Je kunt er ook een programma uit een bestand mee uitvoeren.

Voer dit commando uit om de shell te starten. Als het nodig is, downloadt het de nieuwste `rakudo-star` image.

```console
$ docker run -it rakudo-star
```
Om een programma uit te voeren, gebruik je het volgende commando:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Wil je opruimen als de container stopt? Voeg dan de vlag `--rm` toe. Die verwijdert de container en zijn bestandssysteem. Meer instructies vind je op de projectpagina.

## Externe links

* [Docker image](https://hub.docker.com/_/rakudo-star/)
* [Raku docker project op GitHub](https://github.com/Raku/docker)

{% include nav.html %}
