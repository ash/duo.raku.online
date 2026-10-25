---
title: Einzeilige Kommentare
---

{% include menu.html %}

Der einfachste Kommentar ist ein einzeiliger Kommentar. Er beginnt mit dem Zeichen `#`. Er geht bis zum Ende der Zeile.

```raku
my $name; # Diese Variable wird verwendet, um den Namen des Benutzers zu speichern
$name = prompt 'Wie heißt du? ';
say $name; # Jetzt sehen wir den Namen
```

Ein Shebang ist eine erste Zeile wie `#!/usr/bin/env raku`. Für Raku ist er auch ein Kommentar. Aber die Shell kann ihn lesen und ausführen.

{% include nav.html %}
