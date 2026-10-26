---
title: Dynamische Variablen
---

{% include menu.html %}

Eine _dynamische_ Variable hat das Twigil `*`. Eine lexikalische Variable ist nur in dem Block sichtbar, in dem du sie deklarierst. Eine dynamische Variable ist anders: Raku findet sie, indem es **nach außen durch den Aufrufstapel** schaut. Raku durchsucht den Code, der den aktuellen Code aufgerufen hat. Es ist egal, wo dieser Code definiert ist.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

Die Subroutine `greet` deklariert `$*greeting` nicht und bekommt die Variable auch nicht als Argument. Aber sie kann sie trotzdem sehen. Das liegt daran, dass die Variable dynamisch ist. Außerdem wurde `greet` von einer Stelle aufgerufen, an der die Variable im Geltungsbereich liegt.

Dieses Beispiel würde auch mit einer einfachen globalen Skalarvariable `$greeting` funktionieren. Aber das nächste Beispiel zeigt, was dynamische Variablen besonders macht.

Die Suche folgt dem Aufrufstapel. Also **überschreibt** eine nähere Deklaration eine weiter entfernte, solange ihr Block läuft:

```raku
my $*level = 'outer';

sub show {
    say $*level;
}

show(); # outer

{
    my $*level = 'inner';
    show(); # inner
}
```

Dieselbe `show`-Funktion gibt beim ersten Mal `outer` aus. Sie gibt `inner` aus, wenn sie aus dem Block heraus aufgerufen wird, der `$*level` noch einmal deklariert hat. Das ist _dynamisches Scoping_. Rakus eingebaute Variablen `$*OUT`, `$*IN` und `$*ERR` funktionieren auf dieselbe Weise. Du kannst die Ausgabe für eine Weile umleiten, wenn du `$*OUT` in einem Block noch einmal deklarierst. Dann sieht jede Routine, die du in diesem Block aufrufst, den neuen Wert. Dynamische Variablen eignen sich sehr gut, um Kontext ohne ausdrückliches Argument an aufgerufenen Code zu geben.

{% include nav.html %}
