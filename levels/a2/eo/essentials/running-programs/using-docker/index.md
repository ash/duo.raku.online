---
title: Uzado de docker
---

{% include menu.html %}

Ekzistas docker-bildo de Rakudo. Ĝi nomiĝas `rakudo-star`, pro historiaj kialoj. Vi povas uzi ĝin por ruli REPL-ŝelon. Per ĝi vi ankaŭ povas ruli programon el dosiero.

Rulu ĉi tiun komandon por starti la ŝelon. Se necese, ĝi elŝutas la plej novan bildon de `rakudo-star`.

```console
$ docker run -it rakudo-star
```
Por funkciigi programon, uzu la jenan komandon:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Ĉu vi volas purigi post kiam la ujo haltas? Tiam aldonu la flagon `--rm`. Ĝi forigas la ujon kaj ĝian dosiersistemon. Vi trovas pli da instrukcioj sur la projekta paĝo.

## Eksteraj ligiloj

* [Docker-bildo](https://hub.docker.com/_/rakudo-star/)
* [Raku docker-projekto en GitHub](https://github.com/Raku/docker)

{% include nav.html %}
