---
title: Nicht jeder Fehler tritt sofort auf
translations_gpt:
---

{% include menu.html %}

Standardmäßig hält eine geworfene Ausnahme das Programm sofort an. Mit `try` fangen Sie sie. Aber nicht jeder Fehler, der fatal aussieht, hält Ihr Programm wirklich sofort an. Raku kennt Fehlschläge, die still bleiben. Manche davon reagieren erst, wenn Sie das Ergebnis verwenden. Andere lassen sich prüfen, und dann machen Sie einfach weiter. Zwei davon haben Sie in diesem Teil schon gesehen. Es lohnt sich, sie an einer Stelle zu sammeln.

**Eine Division durch null.** Durch null zu teilen schlägt nicht dort fehl, wo es geschrieben steht. Der schlechte Wert wird erzeugt und ohne Meldung aufbewahrt. Er wirft erst, wenn Sie ihn *verwenden*. Das passiert zum Beispiel, wenn Sie ihn ausgeben oder in einen anderen Typ umwandeln:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

Dieses verzögerte Verhalten und die `Failure`-Objekte dahinter sind das Thema von [Weiche Fehlschläge](/de/oop/failures).

**Ein fehlschlagendes externes Programm.** Angenommen, `run` oder `shell` gibt ein `Proc` für ein fehlgeschlagenes Programm zurück. Dieses `Proc` wirft nicht, wenn es entsteht. Es wirft nur, wenn Sie es ohne Behandlung *wegwerfen*. Speichern Sie es und lesen Sie `.exitcode`, oder prüfen Sie es als Wahrheitswert. Dann bleibt der Fehlschlag ein einfacher Wert, auf den Sie reagieren können. Das haben Sie in [Das Proc-Objekt](/de/oop/external-programs/the-proc-object) gesehen.

Beide Fälle haben etwas gemeinsam. Ein Fehlschlag kann *aufgeschoben* werden, das heißt auf später verschoben. Er wird zu einem Wert, den Sie prüfen, wenn Sie bereit sind. Er lässt das Programm nicht sofort abstürzen. `try` und der `CATCH`-Phaser kümmern sich um Fehler, die sofort geworfen werden. Die Wege auf dieser Seite kümmern sich um Fehler, die nicht sofort geworfen werden.

{% include nav.html %}
