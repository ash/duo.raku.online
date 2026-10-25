---
title: '`@*ARGS` array'
---

{% include menu.html %}

Nunc, quia arrays novisti, unum ex arrays inbuilt cognoscamus: `@*ARGS`. Signum `*` in nomine eius est secundus sigil, vel _twigil_. Plura de eis postea videbimus. Sed nunc videamus cur hoc array speciale utile sit. Argumenta continet quae programma ex linea mandati accipit.

Specta sequentem cursum programmatis:

```console
$ raku run.raku alpha beta
```

Programma `run.raku` duo parametra accipit, `alpha` et `beta`. In programmate ea ex `@*ARGS` legere potes.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Hoc programma imprimit quot argumenta acceperit, deinde argumenta ipsa:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Nota quod programma nullam mutationem requirit, si id ut fasciculum exsecutabilem curris:

```console
$ ./run.raku alpha beta
```

Hoc in casu, programma [shebang habere debet](/la/essentials/running-programs/from-command-line). Sed res maximi momenti est quod indices `@*ARGS` adhuc a `0` incipiunt:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
