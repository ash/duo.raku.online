---
title: Benutzerdefinierte Operatoren
---

{% include menu.html %}

Operatoren in Raku sind eigentlich nur Subroutinen mit speziellen Namen. Das bedeutet, dass du eigene Operatoren definieren kannst. Du verwendest dafür die Kategorienamen von der Seite [Typen von Raku-Operatoren](/de/advanced/operator-types): `prefix`, `infix`, `postfix` und so weiter.

Um einen Operator zu deklarieren, schreibst du ein `sub` mit einem speziellen Namen. Der Name besteht aus der Kategorie, einem Doppelpunkt und dem Symbol des Operators in spitzen Klammern. Hier ist ein neuer Infix-Operator namens `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Sobald `plus` definiert ist, steht er zwischen seinen zwei Operanden. Das ist genau wie bei jedem eingebauten Infix-Operator.

Ein Postfix-Operator kommt nach seinem Operanden. Die Fakultät ist ein klassisches Beispiel. Hier ist sie als Postfix-Operator `!`. Er ist mit dem [Reduktions-Meta-Operator](/de/advanced/metaoperators/reduction) gebaut, den du vorher gesehen hast:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Du bist nicht auf Buchstaben und ASCII-Satzzeichen beschränkt. Das Symbol eines Operators kann ein beliebiges Zeichen sein. Dieser Prefix-Operator verwendet das Paragraphenzeichen, `§`, um eine Zahl zu verdoppeln:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Eigene Operatoren zu definieren ist ein mächtiges Werkzeug, also setze es mit gutem Geschmack ein. Mit einem gut gewählten Operator liest sich Code wie die Sprache seines Fachgebiets. Ein unklarer Operator verwirrt nur die nächste Person, die den Code liest.

{% include nav.html %}
