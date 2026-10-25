---
title: Quiz — Das `@*ARGS`-Array
---

{% include menu.html %}

Sie führen dieses Programm ein paar Mal aus. Finden Sie die richtigen Antworten für jeden Lauf.

Das Programm steht in der Datei `t.raku`. Hier ist sein Code:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Sie führen das Programm so aus:

```console
$ raku t.raku hello world
```

Was gibt jede Codezeile aus?

{:.quiz-select}
2 | `say @*ARGS.elems;` gibt aus&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` gibt aus&nbsp; (: hello, world, hello world :)

## 2

Sie führen das Programm so aus:

```console
$ raku t.raku "hello world"
```

Was gibt das Programm aus?

{:.quiz-select}
1 | `say @*ARGS.elems;` gibt aus&nbsp; (: 1, 2 :) | Der zitierte String ist ein einzelnes Argument.
hello world | `say @*ARGS[0];` gibt aus&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Sie führen das Programm so aus:

```console
$ raku t.raku "hello" "world"
```

Was wird ausgegeben?

{:.quiz-select}
2 | `say @*ARGS.elems;` gibt aus&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` gibt aus&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Die Anführungszeichen der Shell sind nicht im Wert des Arguments enthalten.

{% include quiz.html %}

{% include nav.html %}
