---
title: Namen der Variablen
---

{% include menu.html %}

Bevor wir weitergehen, hier ein interessantes Thema: Welche Namen können Variablen haben? Bisher haben wir einfache Namen wie `$name` oder `$age` gesehen. Sie bestanden nur aus Kleinbuchstaben des englischen Alphabets. Aber es gibt noch mehr Möglichkeiten.

## Groß- und Kleinschreibung

Variablennamen, oder _Bezeichner_, unterscheiden zwischen Groß- und Kleinschreibung. Das bedeutet, dass Großbuchstaben und Kleinbuchstaben verschieden sind. Deshalb verweisen alle Namen unten auf verschiedene skalare Container:

```raku
$myname

$MyName

$myName

$MYNAME
```

Welchem Namensstil Sie folgen, entscheiden Sie selbst. Aber vielleicht möchten Sie Namen aus lauter Großbuchstaben nur für Konstanten verwenden.

## Andere Zeichen

Auch einige andere ASCII-Zeichen sind erlaubt. Das sind Ziffern, der Unterstrich `_`, der Bindestrich `-` und das einfache Anführungszeichen `'`. Das einfache Anführungszeichen steht für einen Apostroph. Beachten Sie, dass ein Bezeichner mit einem Buchstaben oder einem Unterstrich beginnen muss. Nach `-` und nach `'` muss direkt ein Buchstabe folgen. Hier sind ein paar weitere gültige Bezeichner:

```raku
$___

$a'b'c

$my-name

$address2
```

Auch hier liegt die Wahl der Namen bei Ihnen. Aber es ist wahrscheinlich kein guter Stil, Namen absichtlich schwer verständlich zu machen.

## Unicode-Zeichen

Tatsächlich zählen mehr Zeichen als Buchstaben und Ziffern. Dazu gehören alle Zeichen, die nach ihren Unicode-Eigenschaften Buchstaben oder Dezimalziffern sind. Zum Beispiel sind die folgenden Variablen in Raku gültig:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # wobei ۲ eine Ziffer ist
```

{% include nav.html %}
