---
title: 'Solution: Wahre und falsche Zeichenketten'
---

{% include menu.html %}

Diese Übung ähnelt [der vorherigen](../../true-false-numbers). Aber diesmal ist die Aufgabe etwas schwieriger. Es gibt mehr 'verdächtige' Zeichenketten, die als `False` gelten könnten. Lassen Sie uns diese erkunden.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Von all diesen Zeichenketten wird nur die leere Zeichenkette in `False` umgewandelt. Alle anderen Zeichenketten werden zu `True`, auch wenn sie nur Leerzeichen oder das Zeichen `0` enthalten.

🦋 Sie können das vollständige Programm mit dem obigen Beispiel in der Datei [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku) finden.

{% include nav.html %}
