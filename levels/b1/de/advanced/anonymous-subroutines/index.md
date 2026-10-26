---
title: Anonyme Unterprogramme
translations_gpt:
---

{% include menu.html %}

Eine Subroutine muss keinen Namen haben. Eine _anonyme_ Subroutine sieht genauso aus wie eine normale, nur ohne Namen. Meistens wird sie in einer Variablen gespeichert, damit Sie sie später aufrufen können.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

Die Variable `$double` enthält die Subroutine. Dann ruft `$double(5)` sie mit dem Argument `5` auf.

## Pointy Blocks

Raku hat eine kürzere Schreibweise für dasselbe: den _Pointy Block_. Der Pfeil `->` steht vor den Parametern. Sie brauchen weder das Wort `sub` noch Klammern um die Parameter:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Eine kleine anonyme Subroutine wird meistens so geschrieben.

## Das `&`-Sigil

Vielleicht möchten Sie die Subroutine über einen Namen aufrufen, nicht über eine `$`-Variable. In diesem Fall deklarieren Sie die Variable mit dem `&`-Sigil. Dann können Sie sie ohne Sigil aufrufen, genau wie eine normale Subroutine:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## An eine andere Funktion übergeben

Sie müssen eine anonyme Subroutine gar nicht in einer Variablen speichern. Sie ist nur ein Wert. Also können Sie sie direkt an eine Funktion übergeben, die so einen Wert braucht. Beispiele sind `map`, `grep` oder `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Hier ist der Pointy Block die anonyme Subroutine. `map` ruft sie für jedes Element einmal auf. Genau das haben Sie eigentlich schon die ganze Zeit gemacht. Sie haben viele `{ ... }`-Blöcke und `-> $x { ... }` an `map` und `grep` übergeben. Jeder davon ist eine kleine anonyme Subroutine. Sie schreiben sie genau dort, wo Sie sie brauchen, statt ihr zuerst einen Namen zu geben.

{% include nav.html %}
