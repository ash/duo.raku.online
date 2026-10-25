---
title: Docker izmantošana
---

{% include menu.html %}

Ir Rakudo docker attēls. Vēsturisku iemeslu dēļ to sauc `rakudo-star`. Ar to jūs varat palaist REPL čaulu. Ar to jūs varat arī palaist programmu no faila.

Palaidiet šo komandu, lai sāktu čaulu. Ja vajag, tā lejupielādē jaunāko `rakudo-star` attēlu.

```console
$ docker run -it rakudo-star
```
Lai palaistu programmu, izmantojiet šādu komandu:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Vai jūs gribat sakopt, kad konteiners apstājas? Tad pievienojiet karogu `--rm`. Tas noņem konteineru un tā failu sistēmu. Vairāk instrukciju ir projekta lapā.

## Ārējās saites

* [Docker attēls](https://hub.docker.com/_/rakudo-star/)
* [Raku docker projekts GitHub](https://github.com/Raku/docker)

{% include nav.html %}
