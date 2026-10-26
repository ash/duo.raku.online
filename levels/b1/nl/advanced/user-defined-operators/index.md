---
title: Zelf gedefinieerde operatoren
translations_gpt:
---

{% include menu.html %}

Operatoren in Raku zijn eigenlijk gewoon subroutines met speciale namen. Dat betekent dat je je eigen operatoren kunt definiëren. Je gebruikt de categorienamen van de pagina [Typen Raku-operatoren](/nl/advanced/operator-types): `prefix`, `infix`, `postfix`, enzovoort.

Om een operator te declareren, schrijf je een `sub` met een speciale naam. De naam bestaat uit de categorie, een dubbele punt en het symbool van de operator tussen punthaken. Hier is een nieuwe infix-operator die `plus` heet:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Als `plus` eenmaal gedefinieerd is, staat hij tussen zijn twee operanden. Dat is precies zoals bij elke ingebouwde infix-operator.

Een postfix-operator komt na zijn operand. De faculteit is een klassiek voorbeeld. Hier zie je hem als de postfix-operator `!`. Hij is gebouwd op [de reductie-meta-operator](/nl/advanced/metaoperators/reduction) die je eerder zag:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Je bent niet beperkt tot letters en ASCII-leestekens. Het symbool van een operator kan elk teken zijn. Deze prefix-operator gebruikt het paragraafteken, `§`, om een getal te verdubbelen:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Operatoren definiëren is een krachtig hulpmiddel, dus gebruik het met goede smaak. Een goed gekozen operator kan code laten lezen als de taal van het vakgebied. Een onduidelijke operator verwart alleen de volgende persoon die de code leest.

{% include nav.html %}
