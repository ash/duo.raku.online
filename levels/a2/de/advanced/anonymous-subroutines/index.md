---
title: Anonyme Unterprogramme
translations_gpt:
---

{% include menu.html %}

Eine Subroutine braucht keinen Namen. Eine Subroutine ohne Namen ist _anonym_. Sie schreiben sie wie eine normale Subroutine, nur ohne Namen. Meistens speichern Sie sie in einer Variablen. Dann können Sie sie später aufrufen.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

Die Variable `$double` enthält die Subroutine. `$double(5)` ruft die Subroutine mit dem Argument `5` auf.

## Pointy Blocks

In Raku geht dasselbe auch kürzer. Das ist der _Pointy Block_. Er hat einen Pfeil, `->`, vor den Parametern. Sie brauchen das Wort `sub` nicht. Sie brauchen auch keine Klammern um die Parameter:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

So schreibt man meistens eine kleine anonyme Subroutine.

## Das `&`-Sigil

Vielleicht wollen Sie beim Aufruf einen Namen, keine `$`-Variable. Dann erstellen Sie die Variable mit dem `&`-Sigil. Jetzt können Sie sie ohne Sigil aufrufen. Das funktioniert genau wie bei einer normalen Subroutine:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## An eine andere Funktion geben

Sie müssen eine anonyme Subroutine nicht in einer Variablen speichern. Sie ist nur ein Wert. Also können Sie sie direkt an eine Funktion übergeben. Manche Funktionen brauchen so einen Wert, zum Beispiel `map`, `grep` oder `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Hier ist der Pointy Block die anonyme Subroutine. `map` ruft sie für jedes Element einmal auf. Eigentlich machen Sie das schon die ganze Zeit. Sie übergeben oft einen `{ ... }`-Block oder `-> $x { ... }` an `map` und `grep`. Jeder davon ist eine kleine anonyme Subroutine. Sie schreiben sie genau dort, wo Sie sie brauchen. Sie geben ihr vorher keinen Namen.

{% include nav.html %}
