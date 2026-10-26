---
title: Zur Laufzeit laden
---

{% include menu.html %}

## Problem

Hier ist ein Modul, `Greeting.rakumod`. Es exportiert eine Subroutine `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Lade dieses Modul mit `require`, nicht mit `use`. Dann lädt das Programm es zur **Laufzeit**, also während das Programm läuft. `require` importiert Namen nicht automatisch. Also nenne den Namen, den du willst, so: `require Greeting <&hello>;`. Rufe dann `hello('Sam')` auf und gib das Ergebnis aus.

Zeige jetzt, warum Laden zur Laufzeit nützlich ist. Setze das `require` in ein `sub MAIN` mit einem Flag `--quiet`. Das Programm lädt das Modul *nur*, wenn du wirklich eine Begrüßung willst. Mit `--quiet` benutzt das Programm das Modul gar nicht. Es gibt nur `Silence.` aus.

## Beispiel

Führe das Programm mit dem Modul im Suchpfad aus. Es gibt Folgendes aus:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
