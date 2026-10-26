---
title: Item- und Listenkontext
---

{% include menu.html %}

Es gibt zwei weitere Kontexte. Sie entscheiden eine Sache. Ist ein Wert eine **Liste** aus mehreren Werten? Oder ist er ein einzelnes **Element**? Die Sigils `@` und `$` zeigen diesen Unterschied.

Im _Listenkontext_ wird ein Array zu seinen einzelnen Elementen. Eine `for`-Schleife setzt ihr Argument in den Listenkontext. Also geht die Schleife über jedes Element:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

Im _Elementkontext_ ist dasselbe Array ein einzelner Wert. Der Kontextualisierer `$( … )` setzt den Elementkontext. Jetzt sieht die Schleife nur eine Sache. Also läuft sie einmal:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Der Elementkontext erklärt auch Folgendes. Du weist einem Skalar ein Array zu. Der Skalar bekommt das ganze Array als ein Element. Er kopiert die Elemente nicht. Der Grund ist: `my $x = @a` setzt `@a` in den Elementkontext. Beachte: Dieses eine Element kann ein weiterer Container sein. Und dieser Container kann viele Elemente enthalten:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

`$var` ist ein Skalar-Container. Also enthält er jetzt ein einzelnes Objekt. Dieses Objekt ist ein `Array`. Das kannst du leicht prüfen. Verwende `$var` als eine Art Array-Referenz. So heißt das in anderen Sprachen:

```raku
say $var[1]; # 2
```

Der Kontextualisierer `@( … )` macht das Gegenteil. Er setzt den Listenkontext.

Es gibt auch den _Sink-Kontext_. Im Sink-Kontext benutzt niemand den Wert einer Anweisung. Raku wirft den Wert einfach weg. Zum Beispiel kann eine Zeile nur wegen ihres Seiteneffekts da sein. Ein Seiteneffekt ist eine zusätzliche Aktion des Codes, wie das Ausgeben von Text. Manchmal tut ein Wert im Sink-Kontext nichts Nützliches. Dann warnt Raku dich vielleicht vor einer "useless use". Das ist ein hilfreicher Hinweis. Du hast wahrscheinlich vergessen, ein Ergebnis zu benutzen.

Das Sigil, `$` oder `@`, ist eigentlich eine Wahl des Kontexts. Manchmal brauchst du einen anderen Kontext. Dann ändern ihn die Kontextualisierer `$( )` und `@( )`.

{% include nav.html %}
