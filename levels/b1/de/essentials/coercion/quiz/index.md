---
title: 'Quiz: Was ist sein Typ?'
---

{% include menu.html %}

Wählen Sie den richtigen Typ für jedes dieser Literale.

{:.quiz-select}
Str | `"Hello, World!"` ist (: Int, Rat, Num, Str :)
Str | `'Hello, World!'` ist (: Int, Rat, Num, Str :)
Int | `12345` ist (: Int, Rat, Num, Str :)
Str | `'12345'` ist (: Int, Rat, Num, Str :)
Rat | `123.45` ist (: Int, Rat, Num, Str :) | Dies ist eine rationale Zahl in Raku, keine Gleitkommazahl.
Rat | `500.000` ist (: Int, Rat, Num, Str :) | Auch wenn die Zahl keinen tatsächlichen Dezimalteil hat, ist ihr Typ nicht `Int`.
Int | `500_000` ist (: Int, Rat, Num, Str :) | `_` ist ein Tausendertrennzeichen zur einfacheren Lesbarkeit für Menschen.
Str | `'3.14e2'` ist (: Int, Rat, Num, Str :) | Dies ist eine zitierte Zeichenfolge, also ist es ein String.
Rat | `3.14` ist (: Int, Rat, Num, Str :)
Num | `3.14e0` ist (: Int, Rat, Num, Str :)

{% include quiz.html %}
{% include nav.html %}
