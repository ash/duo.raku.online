---
title: '`note`'
---

{% include menu.html %}

Die Routine `note` druckt ihre Argumente in den Standardfehlerstrom. Abgesehen davon funktioniert sie genau wie [`say`](../say).

1. Ruft die `gist`-Methode auf ihren Argumenten auf.
1. Fügt ein Zeilenumbruchzeichen hinzu.
1. Konvertiert das Ergebnis in UTF-8.
1. Sendet es an den `STDERR`-Strom.

```raku
my $x = 42;
note "Der aktuelle Wert von \$x ist $x";
```

Prüfen Sie, dass dieses Programm die Nachricht nicht an `STDOUT` sendet:

```
$ raku t.raku > /dev/null
Der aktuelle Wert von $x ist 42
```

Wenn Sie `note` ohne Argumente aufrufen, druckt die Routine die Standardnachricht `Noted`.

{% include nav.html %}
