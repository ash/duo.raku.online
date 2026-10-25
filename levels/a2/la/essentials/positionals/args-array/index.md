---
title: '`@*ARGS` array'
---

{% include menu.html %}

Nunc arrays novisti. Itaque array inbuilt cognoscamus, `@*ARGS`. Specta `*` in nomine eius. Est secundus sigil, vel _twigil_. Alios twigils postea videmus. Sed nunc utilitatem huius array specialis videamus. Argumenta programmatis continet. Programma ea ex linea mandati accipit.

Specta hunc cursum programmatis:

```console
$ raku run.raku alpha beta
```

Programma `run.raku` duo parametra accipit: `alpha` et `beta`. Ea ex `@*ARGS` legere potes.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Hoc programma numerum argumentorum suorum imprimit. Deinde argumenta ipsa imprimit:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Programma etiam ut fasciculum exsecutabilem currere potes. Ad hoc non necesse est programma mutare:

```console
$ ./run.raku alpha beta
```

Hoc in casu, programma [shebang requirit](/la/essentials/running-programs/from-command-line). Sed res maxima haec est. Indices `@*ARGS` adhuc a `0` incipiunt:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
