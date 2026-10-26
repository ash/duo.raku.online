---
title: Module verwenden
---

{% include menu.html %}

Um ein Modul zu benutzen, lade es mit der Anweisung `use`. Danach kannst du die Namen benutzen, die das Modul exportiert. Es ist so, als hättest du sie selbst geschrieben.

Nimm die Datei `Greeting.rakumod` aus dem vorigen Thema. Ein Programm benutzt sie so:

```raku
use Greeting;

say hello('Anna');
```

`hello` hat die Markierung `is export`. Also macht die Anweisung `use` sie verfügbar. Das Programm ruft sie direkt auf:

```
Hello, Anna!
```

Raku muss das Modul finden. Also muss das Modul im Modul-Suchpfad sein. Das ist die Liste der Orte, an denen Raku nach Modulen sucht. Vielleicht ist die Moduldatei im selben Verzeichnis wie dein Programm. Dann sag Raku mit der Option `-I.`, dass es dort suchen soll. Der Punkt bedeutet „das aktuelle Verzeichnis“:

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku findet installierte Module automatisch. Mehr darüber lernst du später in [Module aus dem Web installieren](/de/advanced/installing-modules). Also brauchst du `-I` nur für Module neben deinem Programm.

{% include nav.html %}
