---
title: Private attributen
translations_gpt:
---

{% include menu.html %}

In de [sectie over attributen](/nl/oop/attributes) hebben we elk attribuut met `$.` gedeclareerd. Dat maakt een publieke accessor. Als je een attribuut in plaats daarvan met `$!` declareert, is het _private_. Het heeft geen accessor, en je kunt het van buiten het object niet zien. Alleen de eigen methoden van de klasse kunnen erbij. Daar schrijf je het als `$!name`.

```raku
class Safe {
    has $!code = 4321;

    method unlocks($attempt) {
        return $attempt == $!code;
    }
}

my $safe = Safe.new;
say $safe.unlocks(4321); # True
say $safe.unlocks(1111); # False
```

De geheime `$!code` wordt in het object bewaard, maar nooit naar buiten getoond. Er is geen accessor `.code`. Je kunt er dus alleen mee werken via de methode `unlocks`. De klasse kiest ervoor om deze methode aan te bieden. Als je `$safe.code` of `$safe!code` probeert te lezen, mislukt dat gewoon.

Private attributen zijn nuttig voor interne details. De rest van het programma hoort niet direct met die details te werken.

{% include nav.html %}
