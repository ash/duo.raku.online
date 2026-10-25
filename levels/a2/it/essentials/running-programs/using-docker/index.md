---
title: Utilizzo di Docker
---

{% include menu.html %}

C'è un'immagine docker di Rakudo. Si chiama `rakudo-star`, per motivi storici. Puoi usarla per avviare una shell REPL. Con questa puoi anche eseguire un programma da un file.

Esegui questo comando per avviare la shell. Se serve, scarica l'ultima immagine `rakudo-star`.

```console
$ docker run -it rakudo-star
```
Per eseguire un programma, utilizza il seguente comando:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Vuoi pulire tutto quando il container si ferma? Allora aggiungi il flag `--rm`. Rimuove il container e il suo file system. Trovi altre istruzioni sulla pagina del progetto.

## Link esterni

* [Immagine Docker](https://hub.docker.com/_/rakudo-star/)
* [Progetto Raku docker su GitHub](https://github.com/Raku/docker)

{% include nav.html %}
