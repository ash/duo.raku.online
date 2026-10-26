---
title: Export-Tags
---

{% include menu.html %}

Markiere eine Subroutine mit `is export`. Dann kommt sie in die _Standard_-Exportgruppe des Moduls. Ein einfaches `use` holt die Namen aus dieser Gruppe. Du kannst `is export` auch ein _Tag_ geben. Mit Tags teilst du die Exporte in Gruppen mit Namen auf. Dann nimmt jedes Programm die Gruppe, die es will.

Du schreibst ein Tag in Klammern nach `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` hat kein Tag. Also ist es in der Standardgruppe. `goodbye` hat das Tag `:partings`.

Ein einfaches `use` importiert nur die Standardgruppe:

```raku
use Greeting;      # hello is available; goodbye is not
```

Nenne jetzt ein Tag. Dann importiert `use` stattdessen diese Gruppe. Das überrascht dich vielleicht. Es importiert _nicht_ auch noch die Standardgruppe:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

Mit `:partings` bekommst du genau diese Gruppe. Willst du alle Exporte eines Moduls? Dann benutze das eingebaute Tag `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

Zwei besondere Tags solltest du kennen. Jedes Modul unterstützt `:ALL`. Es importiert alle Exporte des Moduls. Du kannst `:MANDATORY` an eine Routine setzen. Dann wird die Routine immer importiert. Es ist egal, welches Tag der Aufrufer wählt.

Eigentlich ist jedes Tag ein Paket. Es ist im `EXPORT`-Paket des Moduls. Ein Beispiel ist `Greeting::EXPORT::partings`. Die [Modul-Introspektion](/de/advanced/module-introspection) listet genau diese Pakete auf. Mit Tags kann ein großes Modul seine Standardgruppe klein halten. Ein Programm kann trotzdem nach mehr Funktionen fragen.

{% include nav.html %}
