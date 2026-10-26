---
title: Modul-Introspektion
---

{% include menu.html %}

Der Name eines Moduls erzeugt auch ein _Package_. Ein Package ist ein Namensraum. Er enthält die Namen aus dem Modul. Vorher, im [Abschnitt über Container](/de/advanced/containers), hast du `WHO` gesehen. Es gibt den `Stash` eines Packages zurück. Der `Stash` ist die Tabelle der Symbole, also der Namen, im Package. Modul-Introspection nutzt das. Damit schaut ein Programm in ein Modul hinein.

Die Beispiele unten benutzen das `Greeting`-Modul aus den früheren Themen. Es hat eine Subroutine, die es exportiert. Es hat auch eine gemeinsame `our`-Variable:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Um das Package eines Moduls zu bekommen, schreibe `::` nach seinem Namen. Dann füge `.keys` hinzu. Das listet die Namen im Package auf:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

Das `Greeting`-Modul aus den früheren Themen hat eine `our`-Variable, `$version`. Also hat sein Package diesen Namen. Der Name enthält das Sigil. Daneben siehst du `EXPORT`. Das ist vielleicht eine Überraschung. `EXPORT` ist auch ein Package. Raku erzeugt es automatisch. Das Modul markiert manche Dinge mit `is export`. `EXPORT` enthält sie alle, zum Beispiel die Subroutine `hello`. Also ist ein exportierter Name _nicht_ direkt im Package. Er ist in `EXPORT`. Das ist ein kleineres Package im Package des Moduls. Die Schlüssel kommen nicht in einer festen Reihenfolge. Darum sortiert das Beispiel sie. Dann ist das Ergebnis immer gleich.

Du kannst auch einen Namen im Package finden. Benutze den Namen als Schlüssel. Du bekommst denselben Wert wie mit dem vollen Namen `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Die Exporte eines Moduls auflisten

Die exportierten Namen sind wirklich im `EXPORT`-Package von oben. Also kannst du sie auflisten. Schau einfach eine Ebene tiefer. Exporte ohne Tag kommen in die Gruppe `DEFAULT`. Über Tags kannst du in [Export-Tags](/de/advanced/modules-basics/export-tags) lesen. Die `.keys` von `DEFAULT` sind die exportierten Routinen:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Jeder Schlüssel ist ein exportierter Name mit seinem Sigil. Hier gibt es nur einen Schlüssel: die Subroutine `&hello`. Das Sigil `&` zeigt, dass sie eine Routine ist. So findest du heraus, was ein Modul seinen Nutzern gibt. Du musst seinen Quellcode nicht lesen. Frag einfach sein Package `EXPORT::DEFAULT`, was es hat.

So in ein Package zu schauen ist nützlich. Du kannst herausfinden, was ein Modul hat. Du kannst auch an seine Namen kommen, während das Programm läuft. Dann musst du nicht jeden Namen in den Code schreiben.

{% include nav.html %}
