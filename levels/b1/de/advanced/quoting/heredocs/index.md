---
title: Heredocs
---

{% include menu.html %}

Ein _Heredoc_ ist eine Quoting-Form für Text mit mehreren Zeilen. Es benutzt keine Trennzeichen um den Text herum. Stattdessen gibst du mit `:to` ein Abschlusswort an. Der String beginnt in der nächsten Zeile. Er geht bis zu einer Zeile, die nur dieses Wort enthält:

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

Das Abschlusswort markiert, wo der Text endet. Hier ist es `END`, aber jedes Wort ist in Ordnung. Beachte das `print`. Der Text behält den Zeilenumbruch vor dem Abschlusswort. Deshalb endet er schon mit einem Zeilenumbruch. Mit `say` würdest du einen zweiten bekommen und am Ende eine Leerzeile. Das Heredoc beginnt mit `q:to`, deshalb wird der Text nicht interpoliert. Um Variablen zu interpolieren, benutze `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Hier ist ein nützliches Detail. Die **Einrückung des schließenden Abschlussworts** wird aus jeder Zeile des Textes entfernt. So kannst du ein Heredoc passend zum Code drumherum einrücken. Diese Einrückung landet nicht im String:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Das gibt dasselbe `Hello,` und `World!` aus wie im ersten Beispiel. Hier ist das schließende `END` um acht Leerzeichen eingerückt. Deshalb werden aus jeder Zeile acht Leerzeichen entfernt. Der zurückgegebene String ist nur `Hello,\nWorld!`, ohne Leerzeichen am Anfang der Zeilen.

Das schließende Abschlusswort legt fest, wie viele Leerzeichen entfernt werden. Deshalb muss jede Zeile des Textes mindestens so weit eingerückt sein. Wenn eine Zeile am Anfang weniger Leerzeichen hat, kann Raku nicht die volle Menge entfernen. Dann warnt Raku: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Um das zu vermeiden, rücke das Abschlusswort nicht tiefer ein als die am wenigsten eingerückte Zeile. Heredocs sind die natürliche Wahl für Vorlagen, Nachrichten und jeden Text mit mehreren Zeilen.

{% include nav.html %}
