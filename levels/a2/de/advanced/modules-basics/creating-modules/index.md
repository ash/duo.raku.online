---
title: Module erstellen
---

{% include menu.html %}

Programme werden mit der Zeit größer. Dann ist es gut, sie in Teile aufzuteilen. Du kannst diese Teile wieder benutzen. Ein _Modul_ ist so ein Stück Code. Es ist in einer eigenen Datei. Andere Programme können es laden und benutzen.

Eine Moduldatei hat die Endung `.rakumod`. Sie beginnt mit `unit module` und dem Namen des Moduls. Normalerweise sind die Subroutinen in einem Modul privat. Nur das Modul selbst kann sie benutzen. Willst du eine Subroutine mit anderem Code teilen? Markiere sie mit dem Trait `is export`.

Hier ist ein Modul in der Datei `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

Die Subroutine `hello` hat `is export`. Also kann jedes Programm, das das Modul benutzt, sie sehen. Eine Subroutine ohne `is export` bleibt privat. Nur das Modul selbst kann sie benutzen.

Ein Modul kann auch Daten teilen. Dafür benutzt es `our`-Variablen. Anderer Code kommt über den Namen des Moduls an sie heran. Fügen wir `Greeting` eine Versionsnummer hinzu. Wir brauchen nur eine Zeile mehr in der Datei:

```raku
our $version = '1.0';
```

Jetzt hat `Greeting.rakumod` diese Zeile. Also ist der Wert als `$Greeting::version` verfügbar. Das funktioniert überall, wo das Modul geladen ist.

Die nächsten Themen zeigen, [wie ein Programm so ein Modul lädt](/de/advanced/modules-basics/using-modules). Sie zeigen auch, was das Programm davon bekommt.

{% include nav.html %}
