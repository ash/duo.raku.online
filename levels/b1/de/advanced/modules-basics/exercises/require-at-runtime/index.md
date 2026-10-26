---
title: Zur Laufzeit laden
---

{% include menu.html %}

## Problem

Du hast ein Modul `Greeting.rakumod`, das eine Subroutine `hello` exportiert:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Lade dieses Modul mit `require` statt mit `use`. Dann wird es zur **Laufzeit** geladen. `require` importiert Namen nicht automatisch. Also musst du das gewünschte Symbol angeben, mit `require Greeting <&hello>;`. Rufe dann `hello('Sam')` auf und gib das Ergebnis aus.

Diese Aufgabe zeigt auch, wofür Laden zur Laufzeit gut ist. Setze das `require` in ein `sub MAIN` mit einem `--quiet`-Flag. Dann wird das Modul *nur* geladen, wenn wirklich eine Begrüßung gebraucht wird. Mit `--quiet` gibt das Programm `Silence.` aus und greift überhaupt nicht auf das Modul zu.

## Beispiel

Wenn du das Programm mit dem Modul im Suchpfad ausführst, gibt es Folgendes aus:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
