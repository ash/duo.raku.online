---
title: Lanĉado de komanda linio
---

{% include menu.html %}

Konservu la programon en tekstdosiero, ekzemple, `hello.raku`. Poste donu la vojon de la dosiero al la komandlinia ilo `raku`. Ĉi tie, la dolara signo estas la ŝela prompto:

```console
$ raku hello.raku
```

Se la programo ne havas erarojn, ĝi tuj ruliĝas. Se ĝi presas ion, vi vidas la rezulton en la terminalo:

```console
$ raku hello.raku 
Hello, World!
```

Sur Uniks-bazitaj sistemoj, vi povas aldoni shebang-on. Tio estas speciala unua linio. Vi ankaŭ povas fari la dosieron rulebla:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Jen la sekvaj paŝoj:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
