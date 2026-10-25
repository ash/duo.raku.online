---
title: Docker izmantošana
---

{% include menu.html %}

Ir Rakudo docker attēls, ko vēsturisku iemeslu dēļ sauc `rakudo-star`. To var izmantot, lai palaistu REPL čaulu. Ar to var arī izpildīt programmu no faila.

Lai sāktu čaulu, palaidiet šādu komandu. Ja nepieciešams, tā lejupielādēs jaunāko `rakudo-star` attēlu.

```console
$ docker run -it rakudo-star
```
Lai palaistu programmu, izmantojiet šādu komandu:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Lai iztīrītu konteineru, kad tas beidz darbu, pievienojiet karogu `--rm`. Tad tiek noņemta arī tā failu sistēma. Vairāk instrukciju atradīsiet projekta lapā.

## Ārējās saites

* [Docker attēls](https://hub.docker.com/_/rakudo-star/)
* [Raku docker projekts GitHub](https://github.com/Raku/docker)

{% include nav.html %}
