---
title: Item- und Listenkontext
---

{% include menu.html %}

Zwei weitere Kontexte entscheiden, ob etwas eine **Liste** oder ein einzelnes **Element** ist. Eine Liste hat mehrere Werte. Die Sigils `@` und `$` beruhen auf diesem Unterschied.

Im _Listenkontext_ breitet sich ein Array in seine Elemente aus. Eine `for`-Schleife setzt ihr Argument in den Listenkontext, also geht sie durch jedes Element:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

Im _Elementkontext_ verhält sich dasselbe Array wie ein einzelner Wert. Der Kontextualisierer `$( … )` setzt den Elementkontext. Also sieht die Schleife jetzt nur eine Sache und läuft einmal:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Das erklärt, was passiert, wenn du einem Skalar ein Array zuweist. Das Array wird in ein einzelnes Element gepackt, und seine Elemente werden nicht kopiert. Der Grund ist, dass `my $x = @a` das Array `@a` in den Elementkontext setzt. Beachte, dass dieses einzelne Element ein weiterer Container mit vielen Elementen darin sein kann:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

Die Variable `$var` ist ein Skalar-Container, also enthält sie jetzt ein einzelnes Objekt. Dieses Objekt ist ein `Array`. Das kannst du leicht beweisen. Behandle `$var` wie eine Art Array-Referenz, wie man das in anderen Sprachen nennen würde:

```raku
say $var[1]; # 2
```

Sein Partner, der Kontextualisierer `@( … )`, macht das Gegenteil und setzt den Listenkontext.

Es gibt auch den _Sink-Kontext_. Das ist der Kontext einer Anweisung, deren Wert weggeworfen wird. Zum Beispiel kann eine Zeile nur wegen ihres Seiteneffekts da sein. Manchmal tut ein Wert im Sink-Kontext nichts Nützliches. Dann kann Raku vor einer "useless use" warnen. Das ist ein hilfreicher Hinweis, dass du vergessen hast, ein Ergebnis zu benutzen.

Wenn du ein Sigil wählst, `$` oder `@`, wählst du eigentlich einen Kontext. Wo nötig, kannst du ihn mit den Kontextualisierern `$( )` und `@( )` ändern.

{% include nav.html %}
