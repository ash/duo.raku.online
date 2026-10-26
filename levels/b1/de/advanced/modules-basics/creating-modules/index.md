---
title: Module erstellen
---

{% include menu.html %}

Wenn Programme größer werden, hilft es, sie in wiederverwendbare Teile aufzuteilen. Ein _Modul_ ist eine Code-Einheit in einer eigenen Datei. Andere Programme können es laden und benutzen.

Eine Moduldatei hat die Endung `.rakumod`. Sie beginnt mit `unit module`, das dem Modul seinen Namen gibt. Die Subroutinen darin sind standardmäßig privat. Um eine davon mit Code zu teilen, der das Modul benutzt, markiere sie mit dem Trait `is export`.

Hier ist ein Modul in einer Datei namens `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

Die Subroutine `hello` hat `is export`, also kann jedes Programm sie sehen, das das Modul benutzt. Ohne `is export` würde eine Subroutine privat im Modul bleiben.

Ein Modul kann auch Daten mit `our`-Variablen teilen. Anderer Code kann sie über den Namen des Moduls erreichen. Um `Greeting` eine Versionsnummer zu geben, reicht eine weitere Zeile in der Datei:

```raku
our $version = '1.0';
```

Sobald diese Zeile in `Greeting.rakumod` steht, ist der Wert als `$Greeting::version` verfügbar. Das funktioniert überall, wo das Modul geladen wird.

Die nächsten Themen zeigen, [wie ein Programm ein solches Modul lädt](/de/advanced/modules-basics/using-modules). Sie erklären auch, was genau das Programm davon bekommt.

{% include nav.html %}
