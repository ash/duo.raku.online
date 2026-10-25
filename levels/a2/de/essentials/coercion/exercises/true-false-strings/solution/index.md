---
title: 'Solution: Wahre und falsche Zeichenketten'
---

{% include menu.html %}

Diese Übung ist wie [die vorherige](../../true-false-numbers). Aber diesmal ist die Aufgabe etwas schwerer. Hier können mehr Zeichenketten wie `False` aussehen. Sehen wir sie uns an.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Von all diesen Zeichenketten wird nur die leere Zeichenkette zu `False`. Alle anderen Zeichenketten werden zu `True`. Auch eine Zeichenkette mit nur Leerzeichen wird zu `True`. Eine Zeichenkette mit dem Zeichen `0` ist auch `True`.

🦋 Sie können das vollständige Programm mit dem obigen Beispiel in der Datei [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku) finden.

{% include nav.html %}
