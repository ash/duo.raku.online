---
title: Klassen
translations_gpt:
---

{% include menu.html %}

Bisher waren alle Datentypen, die Sie benutzt haben, in Raku eingebaut. Das waren Zahlen, Zeichenketten, Arrays und so weiter. Mit _objektorientierter Programmierung_ können Sie eigene Typen definieren, die _Klassen_ heißen. Sie können auch Werte dieser Typen erzeugen, die _Objekte_ heißen.

Um eine Klasse zu definieren, schreiben Sie das Schlüsselwort `class`, dann einen Namen und einen Block:

```raku
class Dog {
}
```

Diese Klasse `Dog` ist noch leer, aber sie ist schon ein neuer Typ. Ein Objekt einer Klasse nennt man auch eine _Instanz_. Um eine zu erzeugen, rufen Sie die Methode `new` auf dem Klassennamen auf:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Jetzt enthält `$rex` ein `Dog`-Objekt. Jedes Mal, wenn Sie `new` aufrufen, bekommen Sie ein neues, eigenes Objekt:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` und `$fido` sind zwei verschiedene Hunde, obwohl die Klasse noch leer ist. In den nächsten Abschnitten geben Sie einer Klasse eigene Daten, die man _Attribute_ nennt. Sie geben ihr auch ein eigenes Verhalten, das man _Methoden_ nennt. Das erste Thema zeigt genauer, wie sich eine Klasse von ihren Instanzen unterscheidet.

{% include nav.html %}
