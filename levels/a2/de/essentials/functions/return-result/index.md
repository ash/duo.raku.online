---
title: Das Ergebnis zurückgeben
---

{% include menu.html %}

Oft tut eine Funktion etwas und gibt auch ein Ergebnis zurück. In der funktionalen Programmierung zum Beispiel sollen Funktionen keine Nebeneffekte haben. Das Drucken auf die Konsole ist so ein Nebeneffekt. Aber Raku erlaubt dir das. Schauen wir, wie eine Funktion einen Wert zurückgibt. Wir sehen auch, wie der aufrufende Code diesen Wert bekommt.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Hier nimmt die Funktion `add` zwei Zahlen. Sie gibt ihre Summe zurück. Die Funktion hat das Wort `return` in ihrem Code. Der aufrufende Code kann diesen Wert wie jeden anderen Wert verwenden. Im Programm oben weisen wir ihn einer Variablen zu.

## Der letzte Wert

Das Ergebnis kann der letzte Wert im Körper der Funktion sein. Dann musst du in Raku kein `return` schreiben. So können wir unsere Funktion `add` einfacher machen:

```raku
sub add($x, $y) {
    $x + $y
}
```

Beachte: Die Zeile hat am Ende kein Semikolon. Die Zeile ist die letzte im Codeblock. Deshalb braucht man dort kein Semikolon.

Kleine und einfache Funktionen wie diese schreibt man oft in eine Zeile. Dann ist der Code kürzer:

```raku
sub add($x, $y) { $x + $y }
```

## Keine Daten zum Zurückgeben

Manchmal muss eine Funktion vor dem Ende ihres Körpers zurückkehren. Wenn die Funktion kein Ergebnis zurückgibt, verwende `return` ohne Wert.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x is above the limit";
}
```

{% include nav.html %}
