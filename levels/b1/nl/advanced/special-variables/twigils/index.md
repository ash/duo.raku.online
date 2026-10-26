---
title: Twigils
---

{% include menu.html %}

Een _twigil_ is een teken tussen de sigil en de naam van een variabele. Het verandert de naam niet. In plaats daarvan verandert het hoe de variabele zich gedraagt en hoe Raku hem vindt. Dit zijn de meest voorkomende:

* `*` — een **dynamische** variabele, zoals `$*OUT`, die Raku opzoekt via de call stack
* `?` — een **compile-time** waarde die de compiler levert, zoals `$?FILE` of `$?LINE`
* `!` — een **privaat** attribuut van een object, zoals `$!balance`
* `.` — een attribuut dat je via zijn accessor-methode bereikt, zoals `$.name`

Je hebt er al een aantal gezien, maar we noemden ze nog geen twigils. Dat zijn de dynamische `$*OUT` en `$*IN`, en `$!`/`$.` uit [het deel over objecten](/nl/oop).

De compiler vult de `?`-variabelen in terwijl hij je programma compileert:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Elke twigil toont meteen een ander soort variabele. Als je `$*foo` leest, weet je direct dat hij dynamisch is. En `$?foo` is een compile-time constante. Het volgende onderwerp bekijkt [dynamische variabelen](/nl/advanced/special-variables/dynamic-variables) in detail. Ze gedragen zich heel anders dan de lexicale variabelen die je tot nu toe hebt gebruikt.

{% include nav.html %}
