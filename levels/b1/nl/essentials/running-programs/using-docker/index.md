---
title: Gebruik van docker
---

{% include menu.html %}

Er is een docker-image van Rakudo, dat om historische redenen `rakudo-star` heet. Je kunt het gebruiken om een REPL-shell te starten. Je kunt er ook een programma uit een bestand mee uitvoeren.

Voer het volgende commando uit om de shell te starten. Als het nodig is, downloadt het de nieuwste `rakudo-star` image.

```console
$ docker run -it rakudo-star
```
Om een programma uit te voeren, gebruik je het volgende commando:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Voeg de vlag `--rm` toe om de container op te ruimen als hij afsluit. Het bestandssysteem wordt dan ook verwijderd. Meer instructies vind je op de projectpagina.

## Externe links

* [Docker image](https://hub.docker.com/_/rakudo-star/)
* [Raku docker project op GitHub](https://github.com/Raku/docker)

{% include nav.html %}
