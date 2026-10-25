---
title: 'La `@*ARGS` tabelo'
---

{% include menu.html %}

Nun vi konas tabelojn. Do ni renkontu enkonstruitan tabelon, `@*ARGS`. Rigardu la `*` en ĝia nomo. Ĝi estas dua sigelo, aŭ _tŭigelo_. Ni vidos pli da tŭigeloj poste. Sed nun ni vidu, kiel ĉi tiu speciala tabelo utilas. Ĝi tenas la argumentojn de la programo. La programo ricevas ilin de la komanda linio.

Rigardu ĉi tiun ruladon de programo:

```console
$ raku run.raku alfa beta
```

La programo `run.raku` ricevas du parametrojn: `alfa` kaj `beta`. Vi povas legi ilin el `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Ĉi tiu programo presas la nombron de siaj argumentoj. Poste ĝi presas la argumentojn:

```console
$ raku run.raku alfa beta
2
alfa
beta
```

Vi ankaŭ povas ruli la programon kiel efektivigeblan dosieron. Por tio vi ne bezonas ŝanĝi la programon:

```console
$ ./run.raku alfa beta
```

En ĉi tiu kazo, la programo [bezonas shebangon](/eo/essentials/running-programs/from-command-line). Sed la plej grava afero estas ĉi tio. La indeksoj de `@*ARGS` ankoraŭ komenciĝas per `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
