---
title: Funktionssignaturen dumpen
---

{% include menu.html %}

Manchmal rufst du `dd` ohne Argumente in einer Subroutine auf. Dann gibt `dd` die Signatur der Subroutine aus. Das sind ihr Name und ihre Parameter, wenn sie welche hat. Sieh dir dieses Beispiel mit zwei Subroutinen an:

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

Das Programm gibt die Signaturen aus. Es gibt keine Werte aus:

```console
sub f1()
sub f2($x)
```

Das ist sehr nützlich bei Multi-Funktionen. Das sind mehrere Funktionen mit demselben Namen. Hier sagt dir `dd`, welche Variante das Programm wirklich aufruft:

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

Jedes Mal nennt die Ausgabe die passende Variante:

```console
sub g()
sub g($x)
```

{% include nav.html %}
