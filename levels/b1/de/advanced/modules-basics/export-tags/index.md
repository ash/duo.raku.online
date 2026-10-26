---
title: Export-Tags
---

{% include menu.html %}

Wenn du eine Subroutine mit `is export` markierst, kommt sie in die _Standard_-Exportgruppe des Moduls. Das sind die Namen, die ein einfaches `use` holt. Du kannst `is export` auch ein _Tag_ geben. Tags sortieren die Exporte in Gruppen mit Namen. Dann kann jedes Programm die Gruppe wählen, die es will.

Ein Tag wird in Klammern nach `is export` geschrieben:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` hat kein Tag, also gehört es zur Standardgruppe. `goodbye` hat das Tag `:partings`.

Ein einfaches `use` importiert nur die Standardgruppe:

```raku
use Greeting;      # hello is available; goodbye is not
```

Wenn du ein Tag nennst, importiert `use` stattdessen diese Gruppe. Vielleicht überrascht es dich, aber es importiert _nicht_ auch noch die Standardgruppe:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

Wenn du `:partings` anforderst, bekommst du genau diese Gruppe. Um alles zu importieren, was ein Modul exportiert, benutze das eingebaute Tag `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

Es gibt zwei besondere Tags, die du kennen solltest. Jedes Modul unterstützt `:ALL`, das alle seine Exporte importiert. Du kannst `:MANDATORY` an eine Routine setzen, die immer importiert werden muss. Dabei ist es egal, welches Tag der Aufrufer wählt.

Jedes Tag ist eigentlich ein Paket im `EXPORT`-Paket des Moduls, zum Beispiel `Greeting::EXPORT::partings`. Genau das listet die [Modul-Introspektion](/de/advanced/module-introspection) auf. Mit Tags kann ein größeres Modul seine Standardmenge an Exporten klein halten. Trotzdem kann es zusätzliche Funktionen anbieten, wenn ein Programm danach fragt.

{% include nav.html %}
