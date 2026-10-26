---
title: sink und quietly
---

{% include menu.html %}

Zwei weitere Präfixe führen Code wegen seiner Wirkung aus, nicht wegen seines Werts.

Das `sink`-Präfix führt etwas im _Sink-Kontext_ aus, also nur für seine Seiteneffekte. Das Ergebnis wird weggeworfen. Das ist nützlich, wenn du eine lazy Operation zum Laufen zwingen willst:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Hier läuft das `map` nur wegen der Ausgabe, die es macht. `sink` sorgt dafür, dass es wirklich läuft, und wirft dann die Liste weg, die dabei entsteht. Wenn nichts es zwingt, läuft ein lazy `map` vielleicht gar nicht. Das kann passieren, wenn sein Ergebnis nie verwendet wird.

Das `quietly`-Präfix führt einen Block mit **ausgeschalteten Warnungen** aus. Code, der normalerweise eine Warnung in den Fehlerstrom ausgibt, bleibt still:

```raku
my $value;
quietly {
    say $value + 1; # 1, ohne "uninitialized value"-Warnung
}
```

Wenn du `1` zu einem undefinierten `$value` addierst, warnt Raku normalerweise vor einem uninitialisierten Wert. In `quietly` ist diese Warnung versteckt. Nutze es, wenn du weißt, dass ein Code warnt, und du den Lärm nicht willst. Aber nutze es selten, weil Warnungen meistens auf einen echten Fehler zeigen.

{% include nav.html %}
