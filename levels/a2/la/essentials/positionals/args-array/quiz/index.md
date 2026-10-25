---
title: 'Quiz — `@*ARGS` array'
---

{% include menu.html %}

Hoc programma aliquoties curris. Inveni responsa recta pro quoque cursu.

Programma in fasciculo `t.raku` est. Hic est codex eius:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Programma sic curris:

```console
$ raku t.raku hello world
```

Quid quaeque linea codicis imprimit?

{:.quiz-select}
2 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` prints&nbsp; (: hello, world, hello world :)

## 2

Programma sic curris:

```console
$ raku t.raku "hello world"
```

Quid programma imprimit?

{:.quiz-select}
1 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :) | Chorda virgulis clausa unum argumentum est.
hello world | `say @*ARGS[0];` prints&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Programma sic curris:

```console
$ raku t.raku "hello" "world"
```

What does it print?

{:.quiz-select}
2 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` prints&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | The quotes from the shell are not included in the value of the argument.

{% include quiz.html %}

{% include nav.html %}
