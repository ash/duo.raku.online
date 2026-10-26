---
title: sink und quietly
---

{% include menu.html %}

Es gibt noch zwei Präfixe. Sie führen Code für das aus, was er tut. Der Wert des Codes ist nicht wichtig.

Das `sink`-Präfix führt Code im _Sink-Kontext_ aus. Der Code läuft nur für seine Seiteneffekte. Raku wirft das Ergebnis weg. Das ist nützlich bei einer lazy Operation. Mit `sink` bringst du sie zum Laufen:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Hier führen wir das `map` nur für seine Ausgabe aus. `sink` sorgt dafür, dass es wirklich läuft. Dann wirft `sink` die Liste aus dem `map` weg. Ohne Zwang läuft ein lazy `map` vielleicht gar nicht. Das kann passieren, wenn niemand sein Ergebnis nutzt.

Das `quietly`-Präfix führt einen Block aus und **versteckt seine Warnungen**. Mancher Code gibt normalerweise eine Warnung in den Fehlerstrom aus. In `quietly` ist dieser Code still:

```raku
my $value;
quietly {
    say $value + 1; # 1, ohne "uninitialized value"-Warnung
}
```

Normalerweise zeigt Raku eine Warnung, wenn du `1` zu einem undefinierten `$value` addierst. Die Warnung spricht von einem „uninitialized value“. In `quietly` ist diese Warnung versteckt. Manchmal weißt du, dass dein Code eine Warnung gibt. Du willst diesen Lärm nicht. Dann nutze `quietly`. Aber nutze es nicht oft. Eine Warnung zeigt meistens einen echten Fehler.

{% include nav.html %}
