---
title: Lanĉado de komanda linio
---

{% include menu.html %}

Konservu la tekston de la programo en tekstdosiero, ekzemple, `hello.raku`. Poste transdonu ĝian vojon al la komandlinia ilo `raku`. La dolara signo montras la ŝelan prompton:

```console
$ raku hello.raku
```

Se la programo ne havas erarojn, ĝi ruliĝas tuj. Se estas ia eligo, vi vidos ĝin en la terminalo:

```console
$ raku hello.raku 
Hello, World!
```

Sur Uniks-bazitaj sistemoj, vi povas aldoni shebang-on kaj fari la dosieron rulebla:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

La sekvaj paŝoj estas la jenaj:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
