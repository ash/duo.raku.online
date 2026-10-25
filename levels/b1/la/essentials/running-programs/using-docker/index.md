---
title: Utendo docker
---

{% include menu.html %}

Est imago docker Rakudo, nomine `rakudo-star` propter causas historicas. Ea uti potes ad REPL concham currendam. Etiam programma ex archivo cum ea exsequi potes.

Curre praeceptum sequens ad concham incipiendam. Si opus est, novissimam imaginem `rakudo-star` deprimet.

```console
$ docker run -it rakudo-star
```
Ad currendum programma, utere sequenti praecepto:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Ut continens purges cum exit, vexillum `--rm` adde. Tum etiam systema fasciculorum eius removetur. Plura mandata in pagina propositi invenire potes.

## Nexus externi

* [Imago Docker](https://hub.docker.com/_/rakudo-star/)
* [Raku docker projectus in GitHub](https://github.com/Raku/docker)

{% include nav.html %}
