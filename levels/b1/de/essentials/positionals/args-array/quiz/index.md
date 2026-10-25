---
title: Quiz — Das `@*ARGS`-Array
---

{% include menu.html %}

Sie führen das folgende Programm mehrmals aus. Finden Sie für jeden Lauf die richtigen Antworten.

Das Programm ist in der Datei `t.raku` gespeichert. Hier ist sein Code:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Das Programm wird so ausgeführt:

```console
$ raku t.raku hello world
```

Welchen Wert gibt jede Codezeile aus?

{:.quiz-select}
2 | `say @*ARGS.elems;` gibt aus&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` gibt aus&nbsp; (: hello, world, hello world :)

## 2

Das Programm wird so ausgeführt:

```console
$ raku t.raku "hello world"
```

Welche Werte gibt es aus?

{:.quiz-select}
1 | `say @*ARGS.elems;` gibt aus&nbsp; (: 1, 2 :) | Der zitierte String ist ein einzelnes Argument.
hello world | `say @*ARGS[0];` gibt aus&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Das Programm wird so ausgeführt:

```console
$ raku t.raku "hello" "world"
```

Was wird ausgegeben?

{:.quiz-select}
2 | `say @*ARGS.elems;` gibt aus&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` gibt aus&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Die Anführungszeichen der Shell sind nicht im Wert des Arguments enthalten.

{% include quiz.html %}

{% include nav.html %}
