---
title: Utilizzo di Docker
---

{% include menu.html %}

C'è un'immagine docker di Rakudo, che si chiama `rakudo-star` per motivi storici. Puoi usarla per avviare una shell REPL. Con essa puoi anche eseguire un programma da un file.

Esegui il seguente comando per avviare la shell. Se necessario, scaricherà l'ultima immagine `rakudo-star`.

```console
$ docker run -it rakudo-star
```
Per eseguire un programma, utilizza il seguente comando:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Per pulire il container quando esce, aggiungi il flag `--rm`. Così viene rimosso anche il suo file system. Puoi trovare altre istruzioni sulla pagina del progetto.

## Link esterni

* [Immagine Docker](https://hub.docker.com/_/rakudo-star/)
* [Progetto Raku docker su GitHub](https://github.com/Raku/docker)

{% include nav.html %}
