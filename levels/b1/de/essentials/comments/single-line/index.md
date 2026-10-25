---
title: Einzeilige Kommentare
---

{% include menu.html %}

Die einfachste Art von Kommentar ist ein einzeiliger Kommentar. Er beginnt mit dem Zeichen `#`. Er reicht bis zum Ende der aktuellen Zeile.

```raku
my $name; # Diese Variable wird verwendet, um den Namen des Benutzers zu speichern
$name = prompt 'Wie heißt du? ';
say $name; # Jetzt sehen wir den Namen
```

Sehen Sie sich einen Shebang wie `#!/usr/bin/env raku` in der ersten Codezeile an. Für Raku ist er auch ein Kommentar. Aber die Shell kann ihn lesen und ausführen.

{% include nav.html %}
