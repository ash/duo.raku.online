---
title: Importieren
---

{% include menu.html %}

Du kannst ein Modul auf mehr als eine Weise in ein Programm bringen. Die drei Anweisungen `use`, `need` und `require` unterscheiden sich darin, _wann_ sie das Modul laden. Sie unterscheiden sich auch darin, _was_ sie verfügbar machen.

## `use`

Du hast `use` schon gesehen. Es lädt das Modul zur Kompilierzeit und importiert seine exportierten Namen. Also kannst du sie direkt aufrufen:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` lädt das Modul ebenfalls zur Kompilierzeit. Aber es importiert die exportierten Namen _nicht_. Du erreichst seine `our`-Variablen trotzdem über den Modulnamen:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Nach `need Greeting` würde Raku ein einfaches `hello(...)` nicht erkennen, weil nichts importiert wurde. Nur die qualifizierten Namen, wie `$Greeting::version`, sind verfügbar.

## `require`

`require` lädt das Modul zur _Laufzeit_ statt zur Kompilierzeit. Das ist nützlich, wenn du erst zur Laufzeit weißt, ob du ein Modul brauchst. Zum Beispiel kann sein Name aus einer Benutzereingabe kommen.

Weil das Modul zur Laufzeit geladen wird, wird nichts automatisch importiert. Um Symbole zu importieren, liste sie in spitzen Klammern nach dem Namen des Moduls auf. Dann kannst du sie direkt aufrufen:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Im alltäglichen Code ist `use` das, was du willst. `need` und `require` sind für die selteneren Fälle da.

{% include nav.html %}
