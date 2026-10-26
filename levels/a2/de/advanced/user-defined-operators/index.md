---
title: Benutzerdefinierte Operatoren
---

{% include menu.html %}

In Raku sind Operatoren einfach Subroutinen mit speziellen Namen. Also kannst du eigene Operatoren machen. Dafür nimmst du die Kategorienamen von der Seite [Typen von Raku-Operatoren](/de/advanced/operator-types). Das sind `prefix`, `infix`, `postfix` und so weiter.

Um einen Operator zu deklarieren, schreibst du ein `sub`. Sein Name hat drei Teile. Zuerst kommt die Kategorie. Dann kommt ein Doppelpunkt. Dann kommt das Symbol des Operators in spitzen Klammern. Hier ist ein neuer Infix-Operator. Sein Name ist `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Danach benutzt du `plus` zwischen seinen zwei Operanden. Er funktioniert genau wie ein eingebauter Infix-Operator.

Ein Postfix-Operator kommt nach seinem Operanden. Die Fakultät ist ein typisches Beispiel. Hier ist sie als Postfix-Operator `!`. Er nutzt den [Reduktions-Meta-Operator](/de/advanced/metaoperators/reduction), den du schon kennst:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Du kannst mehr als Buchstaben und ASCII-Satzzeichen benutzen. Das Symbol eines Operators kann jedes Zeichen sein. Dieser Prefix-Operator nutzt das Paragraphenzeichen `§`. Er verdoppelt eine Zahl:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Eigene Operatoren sind ein starkes Werkzeug. Also benutze sie mit Vorsicht. Mit einem guten Operator sieht der Code aus wie die Sprache seines Themas. Ein seltsamer Operator verwirrt nur den nächsten Leser.

{% include nav.html %}
