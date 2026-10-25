---
title: 'Viktorīna — `@*ARGS` masīvs'
---

{% include menu.html %}

Jūs palaižat šo programmu dažas reizes. Atrodiet pareizās atbildes katrai palaišanai.

Programma ir failā `t.raku`. Šeit ir tās kods:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Jūs palaižat programmu šādi:

```console
$ raku t.raku hello world
```

Ko izdrukā katra koda rinda?

{:.quiz-select}
2 | `say @*ARGS.elems;` izdrukā&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` izdrukā&nbsp; (: hello, world, hello world :)

## 2

Jūs palaižat programmu šādi:

```console
$ raku t.raku "hello world"
```

Ko izdrukā programma?

{:.quiz-select}
1 | `say @*ARGS.elems;` izdrukā&nbsp; (: 1, 2 :) | Citētā virkne ir viens arguments.
hello world | `say @*ARGS[0];` izdrukā&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Jūs palaižat programmu šādi:

```console
$ raku t.raku "hello" "world"
```

Ko tā izdrukā?

{:.quiz-select}
2 | `say @*ARGS.elems;` izdrukā&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` izdrukā&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Citāti no čaulas netiek iekļauti argumenta vērtībā.

{% include quiz.html %}

{% include nav.html %}
