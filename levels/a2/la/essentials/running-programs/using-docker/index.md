---
title: Utendo docker
---

{% include menu.html %}

Est imago docker Rakudo. Nomen eius est `rakudo-star`, propter causas historicas. Ea uti potes ad REPL concham currendam. Etiam programma ex archivo cum ea currere potes.

Hoc praeceptum curre ad concham incipiendam. Si opus est, novissimam imaginem `rakudo-star` deprimit.

```console
$ docker run -it rakudo-star
```
Ad currendum programma, utere sequenti praecepto:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Visne post finem continentis purgare? Tum vexillum `--rm` adde. Id continens et systema fasciculorum eius removet. Plura mandata in pagina propositi invenire potes.

## Nexus externi

* [Imago Docker](https://hub.docker.com/_/rakudo-star/)
* [Raku docker projectus in GitHub](https://github.com/Raku/docker)

{% include nav.html %}
