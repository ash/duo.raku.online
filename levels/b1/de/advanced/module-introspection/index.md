---
title: Modul-Introspektion
---

{% include menu.html %}

Der Name eines Moduls erzeugt ein _Package_. Ein Package ist ein Namensraum, der die Namen enthält, die im Modul definiert sind. Vorher, im [Abschnitt über Container](/de/advanced/containers), hast du `WHO` kennengelernt. Es gibt den `Stash`, also die Symboltabelle, eines Packages zurück. Modul-Introspection nutzt genau das.

Die folgenden Beispiele benutzen das `Greeting`-Modul, das wir in den früheren Themen gebaut haben. Es hat eine exportierte Subroutine und eine gemeinsam genutzte `our`-Variable:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Das Package eines Moduls schreibst du mit `::` am Ende. Mit `.keys` listest du die Namen auf, die es enthält:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

Das `Greeting`-Modul aus den früheren Themen definiert eine `our`-Variable, `$version`. Also enthält sein Package diesen Namen, zusammen mit seinem Sigil. Daneben steht `EXPORT`, was vielleicht überraschend aussieht. Es ist ein Package, das Raku automatisch erzeugt. Es enthält alles, was ein Modul mit `is export` markiert, wie die Subroutine `hello`. Ein exportierter Name erscheint also _nicht_ direkt im Package. Er liegt im Unter-Package `EXPORT`. Die Schlüssel kommen in keiner festen Reihenfolge zurück. Deshalb sortiert das Beispiel sie, damit das Ergebnis immer gleich ist.

Du kannst einen Namen auch im Package nachschlagen. Benutze den Namen einfach als Schlüssel. Das ergibt denselben Wert wie der qualifizierte Name `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Auflisten, was ein Modul exportiert

Die exportierten Namen liegen eigentlich im `EXPORT`-Package, das du oben gesehen hast. Du kannst sie also auflisten, indem du eine Ebene tiefer schaust. Exporte ohne Tag kommen in die `DEFAULT`-Gruppe (siehe [Export-Tags](/de/advanced/modules-basics/export-tags)). Die `.keys` dieser Gruppe sind die exportierten Routinen:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Jeder Schlüssel ist ein exportierter Name mit seinem Sigil. Hier ist es die einzige Subroutine, `&hello`, mit dem `&`, das eine Routine kennzeichnet. So kannst du herausfinden, was ein Modul seinen Nutzern anbietet. Du musst dafür nicht seinen Quellcode lesen. Frag einfach sein `EXPORT::DEFAULT`-Package, was es enthält.

So in ein Package zu schauen ist in zwei Fällen nützlich. Vielleicht willst du herausfinden, was ein Modul bereitstellt. Oder du willst seine Namen erreichen, während das Programm läuft. Dann musst du nicht jeden einzelnen im Quellcode ausschreiben.

{% include nav.html %}
