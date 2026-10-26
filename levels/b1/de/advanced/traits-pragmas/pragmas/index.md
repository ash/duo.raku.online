---
title: Pragmas
translations_gpt:
---

{% include menu.html %}

Ein _Pragma_ sieht aus wie ein Modul, das Sie mit `use` laden. Aber es bringt keinen Code mit. Stattdessen ändert es eine Regel der Kompilierung für den Rest des aktuellen Gültigkeitsbereichs. Sie schalten es mit `use` ein und, wo es sinnvoll ist, mit `no` aus.

Das wichtigste Pragma, `strict`, ist in Raku **standardmäßig eingeschaltet**. Es verlangt, dass Sie jede Variable deklarieren, bevor Sie sie benutzen. Darum findet Raku einen Tippfehler in einem Variablennamen. Ohne das Pragma würde der Tippfehler still eine neue Variable erzeugen.

Wenn Sie `strict` mit `no strict` ausschalten, gilt diese Regel nicht mehr. Dann können Sie einer Variablen etwas zuweisen, die nie mit `my` deklariert wurde:

```raku
no strict;

$x = 42;
say $x; # 42
```

Mit dem standardmäßigen `strict` wäre dieses bloße `$x = 42` ein Fehler zur Kompilierzeit. Die Meldung ist *Variable '$x' is not declared*. Die Zeile `no strict` lockert die Regel bis zum Ende des Gültigkeitsbereichs um sie herum.

Einige andere Pragmas sind `fatal`, `isms` und `variables`. `fatal` macht aus einem stillen Fehler eine geworfene Ausnahme. Das ist nützlich, sobald Sie wissen, wie man Ausnahmen behandelt. `isms` erlaubt Schreibweisen, die aus anderen Sprachen kommen. Mit `variables` können Sie die Regeln für Variablen anpassen. Die Wirkung eines Pragmas ist _lexikalisch_. Sie gilt nur bis zum Ende des Blocks, in dem es steht. So können Sie eine Regel strenger oder lockerer machen. Das können Sie genau in dem Teil des Codes tun, wo Sie es brauchen.

Ein Pragma nimmt ein Argument: `lib`. Es fügt ein Verzeichnis zu der Liste hinzu, die Raku durchsucht, wenn es Module lädt. Es macht dasselbe wie die Kommandozeilenoption `-I`, aber im Programm:

```raku
use lib 'lib';
```

Sie werden es benutzen, sobald Sie anfangen, eigene [Module](/de/advanced/modules-basics/using-modules) zu schreiben und zu laden.

{% include nav.html %}
