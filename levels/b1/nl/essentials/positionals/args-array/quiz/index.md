---
title: Quiz — De `@*ARGS` array
---

{% include menu.html %}

Je voert het volgende programma meerdere keren uit. Zoek voor elke uitvoering de juiste antwoorden.

Het programma is opgeslagen in het bestand `t.raku`. Hier is de code:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Het programma wordt zo uitgevoerd:

```console
$ raku t.raku hello world
```

Welke waarde print elke regel code?

{:.quiz-select}
2 | `say @*ARGS.elems;` drukt af&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` drukt af&nbsp; (: hello, world, hello world :)

## 2

Het programma wordt zo uitgevoerd:

```console
$ raku t.raku "hello world"
```

Welke waarden print het programma?

{:.quiz-select}
1 | `say @*ARGS.elems;` drukt af&nbsp; (: 1, 2 :) | De geciteerde string is een enkel argument.
hello world | `say @*ARGS[0];` drukt af&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Het programma wordt zo uitgevoerd:

```console
$ raku t.raku "hello" "world"
```

Wat drukt het af?

{:.quiz-select}
2 | `say @*ARGS.elems;` drukt af&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` drukt af&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | De aanhalingstekens van de shell zijn niet opgenomen in de waarde van het argument.

{% include quiz.html %}

{% include nav.html %}
