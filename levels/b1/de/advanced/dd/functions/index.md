---
title: Funktionssignaturen dumpen
---

{% include menu.html %}

Du kannst ein nacktes `dd` ohne Argumente in einer Subroutine aufrufen. Dann gibt es die Signatur dieser Subroutine aus. Das sind ihr Name und die Liste der Parameter, falls sie welche hat. Sieh dir das folgende Beispiel mit zwei Subroutinen an:

```raku
sub f1 {
    dd
}

f1();

sub f2($x) {
    dd
}

f2(42);
```

Das Programm gibt die Signaturen aus, keine Werte:

```console
sub f1()
sub f2($x)
```

Das ist besonders nützlich bei Multi-Funktionen, denn es zeigt, welche Variante wirklich aufgerufen wurde:

```raku
multi sub g {
    dd
}

multi sub g($x) {
    dd
}

g();
g(42);
```

Jedes Mal zeigt die Ausgabe die passende Variante:

```console
sub g()
sub g($x)
```

{% include nav.html %}
