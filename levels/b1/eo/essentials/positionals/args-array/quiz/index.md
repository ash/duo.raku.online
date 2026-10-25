---
title: 'Kvizo — La `@*ARGS` tabelo'
---

{% include menu.html %}

Vi rulas la sekvan programon plurajn fojojn. Trovu la ĝustajn respondojn por ĉiu rulado.

La programo estas konservita en la dosiero `t.raku`. Jen ĝia kodo:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

La programo estas rulata tiel:

```console
$ raku t.raku hello world
```

Kiun valoron presas ĉiu linio de kodo?

{:.quiz-select}
2 | `say @*ARGS.elems;` presas&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` presas&nbsp; (: hello, world, hello world :)

## 2

La programo estas rulata tiel:

```console
$ raku t.raku "hello world"
```

Kiujn valorojn ĝi presas?

{:.quiz-select}
1 | `say @*ARGS.elems;` presas&nbsp; (: 1, 2 :) | La citita ŝnuro estas unu sola argumento.
hello world | `say @*ARGS[0];` presas&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

La programo estas rulata tiel:

```console
$ raku t.raku "hello" "world"
```

Kion ĝi presas?

{:.quiz-select}
2 | `say @*ARGS.elems;` presas&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` presas&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | La citiloj de la ŝelo ne estas inkluzivitaj en la valoro de la argumento.

{% include quiz.html %}

{% include nav.html %}
