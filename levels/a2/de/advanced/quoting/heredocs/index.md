---
title: Heredocs
---

{% include menu.html %}

Ein _Heredoc_ ist eine Quoting-Form für Text mit vielen Zeilen. Es hat keine Trennzeichen um den Text herum. Stattdessen gibst du mit `:to` ein Abschlusswort an. Das Abschlusswort markiert das Ende. Der String beginnt in der nächsten Zeile. Er geht bis zu einer Zeile mit nur diesem Wort:

```raku
my $text = q:to/END/;
Hello,
World!
END

print $text;
```

Die Ausgabe ist:

```
Hello,
World!
```

Das Abschlusswort markiert das Ende des Textes. Hier ist es `END`, aber du kannst jedes Wort benutzen. Sieh dir das `print` an. Der Text behält den Zeilenumbruch vor dem Abschlusswort. Deshalb endet der Text schon mit einem Zeilenumbruch. `say` fügt einen zweiten hinzu. Dann bekommst du am Ende eine Leerzeile. Dieses Heredoc beginnt mit `q:to`. Deshalb wird der Text nicht interpoliert. Um Variablen zu interpolieren, benutze `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Hier ist ein nützliches Detail. Sieh dir die **Einrückung des schließenden Abschlussworts** an. Raku entfernt sie aus jeder Zeile des Textes. So kannst du ein Heredoc genauso einrücken wie den Code drumherum. Die Einrückung kommt nicht in den String:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Das gibt dasselbe `Hello,` und `World!` aus wie das erste Beispiel. Hier hat das schließende `END` acht Leerzeichen davor. Deshalb entfernt Raku acht Leerzeichen aus jeder Zeile. Die Funktion gibt nur `Hello,\nWorld!` zurück. Am Anfang stehen keine Leerzeichen.

Das schließende Abschlusswort bestimmt, wie viele Leerzeichen Raku entfernt. Deshalb braucht jede Zeile des Textes mindestens so viele Leerzeichen. Vielleicht hat eine Zeile weniger Leerzeichen. Dann kann Raku nicht alle entfernen. Raku warnt: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Vermeide diese Warnung. Rücke das Abschlusswort nicht weiter ein als irgendeine Zeile des Textes. Heredocs sind die natürliche Wahl für Vorlagen und Nachrichten. Eigentlich sind sie gut für jeden Text mit mehreren Zeilen.

{% include nav.html %}
