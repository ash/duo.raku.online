---
title: Namen der Variablen
---

{% include menu.html %}

Bevor wir weitermachen, sehen wir uns ein interessantes Thema an. Welche Namen können Variablen haben? Bis jetzt haben wir einfache Namen verwendet, wie `$name` oder `$age`. Diese Namen haben nur Kleinbuchstaben aus dem englischen Alphabet. Aber es gibt mehr Möglichkeiten.

## Große und kleine Buchstaben

Variablennamen heißen auch _Bezeichner_. In Bezeichnern sind große und kleine Buchstaben verschieden. Deshalb steht jeder Name unten für einen anderen skalaren Container:

```raku
$myname

$MyName

$myName

$MYNAME
```

Sie entscheiden, wie Sie Ihre Variablen nennen. Aber hier ist eine Idee. Nehmen Sie Namen aus lauter Großbuchstaben nur für Konstanten. Konstanten sind Werte, die sich nicht ändern.

## Andere Zeichen

Auch einige andere ASCII-Zeichen sind möglich. Sie können Ziffern und den Unterstrich `_` verwenden. Sie können auch den Bindestrich `-` und das einfache Anführungszeichen `'` verwenden. Hier bedeutet das einfache Anführungszeichen einen Apostroph. Ein Bezeichner muss mit einem Buchstaben oder einem Unterstrich beginnen. Nach einem `-` oder einem `'` muss ein Buchstabe stehen. Hier sind noch ein paar korrekte Bezeichner:

```raku
$___

$a'b'c

$my-name

$address2
```

Auch hier wählen Sie die Namen. Aber manche Namen sehen aus wie ein Geheimcode. Es ist wahrscheinlich eine schlechte Idee, solche Namen mit Absicht zu wählen.

## Unicode-Zeichen

Tatsächlich gibt es noch viel mehr Buchstaben und Ziffern. Unicode hat Eigenschaften für jedes Zeichen. Sie sagen, ob das Zeichen ein Buchstabe oder eine Dezimalziffer ist. Raku verwendet diese Eigenschaften. Zum Beispiel sind diese Variablen in Raku korrekt:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # wobei ۲ eine Ziffer ist
```

{% include nav.html %}
