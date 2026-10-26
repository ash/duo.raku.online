---
title: Zelf gedefinieerde operatoren
translations_gpt:
---

{% include menu.html %}

In Raku zijn operatoren gewoon subroutines met speciale namen. Je kunt dus je eigen operatoren maken. Daarvoor gebruik je de namen van de categorieën op de pagina [Typen Raku-operatoren](/nl/advanced/operator-types). Dat zijn `prefix`, `infix`, `postfix`, enzovoort.

Om een operator te declareren, schrijf je een `sub`. De naam ervan heeft drie delen. Eerst komt de categorie. Dan komt een dubbele punt. Dan komt het symbool van de operator tussen punthaken. Hier is een nieuwe infix-operator. Zijn naam is `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Daarna gebruik je `plus` tussen zijn twee operanden. Hij werkt precies zoals een ingebouwde infix-operator.

Een postfix-operator komt na zijn operand. De faculteit is een typisch voorbeeld. Hier zie je hem als de postfix-operator `!`. Hij gebruikt [de reductie-meta-operator](/nl/advanced/metaoperators/reduction) die je al kent:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Je kunt meer gebruiken dan letters en ASCII-leestekens. Het symbool van een operator kan elk teken zijn. Deze prefix-operator gebruikt het paragraafteken `§`. Hij verdubbelt een getal:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Je eigen operatoren zijn een sterk hulpmiddel. Gebruik ze dus met zorg. Een goede operator laat de code lijken op de taal van het onderwerp. Een vreemde operator verwart de volgende lezer alleen.

{% include nav.html %}
