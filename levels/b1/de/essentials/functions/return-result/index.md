---
title: Das Ergebnis zurückgeben
---

{% include menu.html %}

Funktionen tun oft etwas und geben auch ein Ergebnis zurück. Zum Beispiel sollen Funktionen in der funktionalen Programmierung keine Nebeneffekte haben. Das Drucken auf die Konsole ist so ein Nebeneffekt. Aber Raku hindert dich nicht daran, das zu tun. Schauen wir uns an, wie eine Funktion einen Wert zurückgibt. Wir sehen auch, wie der aufrufende Code ihn bekommt.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Hier nimmt die Funktion `add` zwei Zahlen und gibt ihre Summe zurück. Sie verwendet ein explizites `return`. Der aufrufende Code kann den zurückgegebenen Wert wie jeden anderen Wert verwenden. Im Programm oben wird er einer Variablen zugewiesen.

## Der zuletzt berechnete Wert

In Raku ist ein explizites `return` nicht immer nötig. Du kannst es weglassen, wenn das Ergebnis der letzte Wert ist, den die Funktion berechnet. So kann unsere `add`-Funktion einfacher sein:

```raku
sub add($x, $y) {
    $x + $y
}
```

Du hast vielleicht bemerkt, dass die Zeile am Ende kein Semikolon hat. Es ist nicht nötig, weil diese Zeile den Codeblock beendet.

Kleine und einfache Funktionen wie diese schreibt man oft in eine einzige Zeile. Das macht den Code kompakter:

```raku
sub add($x, $y) { $x + $y }
```

## Keine Rückgabedaten

Manchmal musst du vor dem Ende des Körpers aus einer Funktion zurückkehren. Wenn die Funktion kein Ergebnis zurückgibt, verwende `return` allein.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x is above the limit";
}
```

{% include nav.html %}
