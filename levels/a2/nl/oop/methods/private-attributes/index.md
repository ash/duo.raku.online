---
title: Private attributen
translations_gpt:
---

{% include menu.html %}

In de [sectie over attributen](/nl/oop/attributes) had elk attribuut `$.` in zijn naam. `$.` maakt een publieke accessor. Iedereen buiten het object kan die gebruiken. Maar je kunt in plaats daarvan ook `$!` schrijven. Dan is het attribuut _private_. Het heeft geen accessor. Code buiten het object kan het niet zien. Alleen de methoden van de klasse kunnen het gebruiken. Daar schrijf je het als `$!name`.

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

De geheime `$!code` zit in het object. Maar niemand buiten het object kan hem zien. Er is geen accessor `.code`. De enige manier om de code te gebruiken is de methode `unlocks`. De klasse geeft je deze methode met opzet. Lezen met `$safe.code` of `$safe!code` lukt gewoon niet.

Private attributen zijn goed voor details binnen het object. De rest van het programma moet er niet direct aan komen.

{% include nav.html %}
