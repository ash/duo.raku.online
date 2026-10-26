---
title: Dynamische Variablen
---

{% include menu.html %}

Eine _dynamische_ Variable hat das Twigil `*`. Eine normale, lexikalische Variable ist nur in ihrem eigenen Block sichtbar. Du deklarierst sie in diesem Block. Eine dynamische Variable ist anders. Raku sucht sie **durch den Aufrufstapel**. Raku schaut auf den Code, der den aktuellen Code aufgerufen hat. Dann geht Raku einen Schritt weiter zurück, und so weiter. Es ist egal, wo der aktuelle Code geschrieben ist.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

Die Subroutine `greet` deklariert `$*greeting` nicht. Sie bekommt die Variable auch nicht als Argument. Aber sie kann sie trotzdem sehen. Die Variable ist dynamisch. Und die Variable ist dort sichtbar, wo das Programm `greet` aufruft.

Dieses Beispiel funktioniert auch mit einer einfachen globalen Skalarvariable `$greeting`. Das nächste Beispiel zeigt, was an dynamischen Variablen besonders ist.

Raku sucht die Variable durch den Aufrufstapel. Also **überschreibt** eine nähere Deklaration eine weiter entfernte. Das heißt: Raku verwendet die nähere. Das gilt, solange ihr Block läuft:

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

Dieselbe `show`-Funktion gibt beim ersten Mal `outer` aus. Beim zweiten Mal gibt sie `inner` aus. Diesmal ruft das Programm `show` aus dem Block heraus auf. Dieser Block deklariert `$*level` noch einmal. Das ist _dynamisches Scoping_. Rakus eingebaute Variablen `$*OUT`, `$*IN` und `$*ERR` funktionieren auf diese Weise. Zum Beispiel kannst du `$*OUT` in einem Block noch einmal deklarieren. Dann geht die Ausgabe für eine Weile an einen neuen Ort. Jede Routine, die du im Block aufrufst, sieht den neuen Wert. Dynamische Variablen sind sehr praktisch für Informationen, die der aufgerufene Code braucht. Du musst diese Informationen nicht als Argument übergeben.

{% include nav.html %}
