---
title: Uzado de docker
---

{% include menu.html %}

Ekzistas docker-bildo de Rakudo, nomata `rakudo-star` pro historiaj kialoj. Vi povas uzi ĝin por funkciigi REPL-ŝelon. Per ĝi vi ankaŭ povas plenumi programon el dosiero.

Rulu la jenan komandon por starti la ŝelon. Se necese, ĝi elŝutos la plej lastan bildon de `rakudo-star`.

```console
$ docker run -it rakudo-star
```
Por funkciigi programon, uzu la jenan komandon:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Por purigi la ujon, kiam ĝi finiĝas, aldonu la flagon `--rm`. Tiam ankaŭ ĝia dosiersistemo estas forigita. Vi povas trovi pli da instrukcioj sur la projekta paĝo.

## Eksteraj ligiloj

* [Docker-bildo](https://hub.docker.com/_/rakudo-star/)
* [Raku docker-projekto en GitHub](https://github.com/Raku/docker)

{% include nav.html %}
