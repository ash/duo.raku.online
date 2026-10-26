---
title: Twigils
---

{% include menu.html %}

Een _twigil_ is een teken. Het staat tussen de sigil en de naam van een variabele. Het verandert de naam niet. Het verandert hoe de variabele werkt. Het verandert ook hoe Raku hem vindt. Dit zijn de twigils die vaak voorkomen:

* `*` — een **dynamische** variabele, bijvoorbeeld `$*OUT`; Raku vindt hem via de call stack
* `?` — een **compile-time** waarde; de compiler stelt hem in, bijvoorbeeld `$?FILE` en `$?LINE`
* `!` — een **privaat** attribuut van een object, bijvoorbeeld `$!balance`
* `.` — een attribuut dat je via zijn accessor-methode gebruikt, bijvoorbeeld `$.name`

Je kent er al een paar, maar zonder de naam “twigil”. `$*OUT` en `$*IN` zijn dynamisch. En je zag `$!` en `$.` in [het deel over objecten](/nl/oop).

De compiler geeft de `?`-variabelen hun waarden. Dat doet hij als hij je programma compileert:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Elke twigil toont een ander soort variabele. Je ziet het meteen. Als je `$*foo` leest, weet je dat hij dynamisch is. En `$?foo` is een compile-time constante. Het volgende onderwerp kijkt goed naar [dynamische variabelen](/nl/advanced/special-variables/dynamic-variables). Ze werken heel anders dan de lexicale variabelen die je kent.

{% include nav.html %}
