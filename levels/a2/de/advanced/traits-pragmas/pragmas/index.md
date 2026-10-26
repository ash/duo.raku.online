---
title: Pragmas
translations_gpt:
---

{% include menu.html %}

Ein _Pragma_ sieht aus wie ein Modul. Sie laden es mit `use`. Aber es bringt keinen neuen Code. Stattdessen ändert es eine Regel der Kompilierung. Die Änderung gilt bis zum Ende des aktuellen Gültigkeitsbereichs. Sie schalten ein Pragma mit `use` ein. Wenn es sinnvoll ist, können Sie es mit `no` ausschalten.

Das wichtigste Pragma ist `strict`. In Raku ist es **standardmäßig eingeschaltet**. Damit müssen Sie jede Variable deklarieren, bevor Sie sie benutzen. So findet Raku Tippfehler in Variablennamen. Ein falscher Name macht nicht still eine neue Variable.

`no strict` schaltet `strict` aus. Dann gilt diese Regel nicht mehr. Jetzt können Sie einer Variablen ohne `my` einen Wert zuweisen:

```raku
no strict;

$x = 42;
say $x; # 42
```

Mit dem normalen `strict` ist dieses `$x = 42` ohne `my` ein Fehler. Raku zeigt ihn zur Kompilierzeit: *Variable '$x' is not declared*. Die Zeile `no strict` schaltet diese Regel aus. Das gilt bis zum Ende des Gültigkeitsbereichs.

Es gibt auch andere Pragmas. Mit `fatal` wirft ein stiller Fehler eine Ausnahme. Das ist nützlich, wenn Sie gelernt haben, wie man Ausnahmen behandelt. `isms` erlaubt einige typische Schreibweisen aus anderen Sprachen. `variables` ändert die Regeln für Variablen. Die Wirkung eines Pragmas ist _lexikalisch_. Sie gilt nur bis zum Ende seines Blocks. So können Sie eine Regel strenger oder weniger streng machen. Das können Sie genau dort tun, wo Sie es im Code brauchen.

Ein Pragma nimmt ein Argument. Das ist `lib`. Raku sucht Module in einer Liste von Verzeichnissen. `lib` fügt ein Verzeichnis zu dieser Liste hinzu. Es funktioniert wie die Kommandozeilenoption `-I`. Aber Sie schreiben es in das Programm:

```raku
use lib 'lib';
```

Sie brauchen es, wenn Sie eigene [Module](/de/advanced/modules-basics/using-modules) schreiben und laden.

{% include nav.html %}
