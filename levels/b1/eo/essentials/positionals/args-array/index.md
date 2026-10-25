---
title: 'La `@*ARGS` tabelo'
---

{% include menu.html %}

Nun, kiam vi konas tabelojn, ni renkontu unu el la enkonstruitaj tabeloj: `@*ARGS`. La `*` en ĝia nomo estas dua sigelo, aŭ _tŭigelo_. Ni vidos pli da ili poste. Sed nun ni vidu, kial ĉi tiu speciala tabelo estas utila. Ĝi enhavas la argumentojn, kiujn la programo ricevas de la komanda linio.

Rigardu la sekvan ruladon de programo:

```console
$ raku run.raku alfa beta
```

La programo `run.raku` ricevas du parametrojn, `alfa` kaj `beta`. En la programo, vi povas legi ilin el `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Ĉi tiu programo presas, kiom da argumentoj ĝi ricevis, kaj poste la argumentojn mem:

```console
$ raku run.raku alfa beta
2
alfa
beta
```

Notu, ke la programo bezonas neniun ŝanĝon, se vi rulas ĝin kiel efektivigeblan dosieron:

```console
$ ./run.raku alfa beta
```

En ĉi tiu kazo, la programo [devus havi shebangon](/eo/essentials/running-programs/from-command-line). Sed la plej grava afero estas, ke la indeksoj de `@*ARGS` ankoraŭ komenciĝas per `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
