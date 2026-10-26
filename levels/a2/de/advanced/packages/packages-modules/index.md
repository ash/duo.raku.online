---
title: Pakete und Module
---

{% include menu.html %}

Das Schlüsselwort `package` erzeugt einen Namensraum. Darin kannst du Dinge mit `our` erzeugen. Sie werden Teil des Namensraums. Du kommst von außen an sie heran. Benutze dafür den Namen des Packages und den Trenner `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Du bekommst die Variable als `$Maths::pi`. Zuerst kommt das Sigil, dann der Package-Name, dann der Variablenname. Eine Subroutine rufst du als `Maths::double(...)` auf.

`package` und `module` erzeugen beide einen Namensraum. Aber sie machen auch verschiedene Dinge. Ein `module` ist die normale Wahl für Code, den du wieder benutzt. Ein einfaches `package` ist nur der Namensraum, ohne mehr. Eine `class` erzeugt auch einen Namensraum. Klassen lernst du im [nächsten Teil](/de/oop) kennen. Eine Klasse fügt auch die Werkzeuge für Objekte hinzu.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

`module` gibt dir also einen Namensraum. Ein `package` allein gibt dir die gleiche Art von Namensraum. Wähle zwischen ihnen danach, was du machen willst. Benutze `module` für Bibliotheken. Benutze `package` für einen einfachen Namensraum. Später, mit Objekten, benutze `class` für Typen.

{% include nav.html %}
