---
title: Module verwenden
---

{% include menu.html %}

Um ein Modul zu verwenden, lade es mit der `use`-Anweisung. Danach sind die Namen verfügbar, die das Modul exportiert. Du kannst sie benutzen, als hättest du sie selbst geschrieben.

So benutzt ein Programm die Datei `Greeting.rakumod` aus dem vorigen Thema:

```raku
use Greeting;

say hello('Anna');
```

`hello` wurde mit `is export` markiert, also macht die `use`-Anweisung sie verfügbar. Das Programm ruft sie direkt auf:

```
Hello, Anna!
```

Raku kann das Modul nur finden, wenn es im Modul-Suchpfad ist. Deine Moduldatei liegt vielleicht im selben Verzeichnis wie dein Programm. Dann sag Raku mit der Option `-I.`, dass es dort suchen soll. Der Punkt bedeutet „das aktuelle Verzeichnis“:

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku findet installierte Module automatisch. Sie werden später behandelt, in [Module aus dem Web installieren](/de/advanced/installing-modules). Also brauchst du die Option `-I` nur für Module, die neben deinem eigenen Programm liegen.

{% include nav.html %}
