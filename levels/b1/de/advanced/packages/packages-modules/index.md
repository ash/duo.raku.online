---
title: Pakete und Module
---

{% include menu.html %}

Das Schlüsselwort `package` erzeugt einen Namensraum. Alles, was darin mit `our` deklariert wird, wird Teil dieses Namensraums. Von außen erreichst du diese Namen über den Package-Namen und den `::`-Trenner:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Du erreichst die Variable als `$Maths::pi`. Der Name hat das Sigil, dann den Package-Namen, dann den Variablennamen. Eine Subroutine wird als `Maths::double(...)` aufgerufen.

`package` und `module` erzeugen beide einen Namensraum, aber sonst tun sie verschiedene Dinge. Ein `module` ist die übliche Wahl für wiederverwendbaren Code. Ein einfaches `package` ist nur der Namensraum, ohne Extras. Eine `class`, die du im [nächsten Teil](/de/oop) kennenlernst, erzeugt ebenfalls einen Namensraum. Dazu fügt sie alles hinzu, was du für objektorientierte Programmierung brauchst.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

`module` gibt dir also denselben Namensraum wie ein einfaches `package`. Welches du wählst, hängt vor allem davon ab, was du tun willst. Benutze `module` für Bibliotheken und `package` für einen einfachen Namensraum. Später, wenn du bei Objekten bist, benutze `class` für Typen.

{% include nav.html %}
