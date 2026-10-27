---
title: Nicht jeder Fehler tritt sofort auf
translations_gpt:
---

{% include menu.html %}

Eine Ausnahme ist eine Art Fehler. Normalerweise hält eine geworfene Ausnahme das Programm sofort an. Sie fangen sie mit `try`. Aber manche Fehler sehen nur fatal aus. Sie halten Ihr Programm nicht sofort an, wenn sie passieren. In Raku bleiben manche Fehlschläge still. Manche davon reagieren erst später, wenn Sie das Ergebnis benutzen. Andere lassen sich ansehen, und Ihr Programm läuft weiter. Zwei davon haben Sie in diesem Teil schon gesehen. Es ist nützlich, sie zusammen an einer Stelle zu sehen.

**Eine Division durch null.** Die Division schlägt nicht in ihrer eigenen Zeile fehl. Das Programm erzeugt den schlechten Wert und behält ihn ohne Meldung. Der Wert wirft erst eine Ausnahme, wenn Sie ihn *benutzen*. Zum Beispiel geben Sie ihn aus oder wandeln ihn in einen anderen Typ um:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

Die Seite [Weiche Fehlschläge](/de/oop/failures) erklärt diese späte Reaktion. Die Seite erklärt auch die `Failure`-Objekte dahinter.

**Ein fehlschlagendes externes Programm.** `run` und `shell` geben ein `Proc` zurück. Manchmal schlägt das Programm fehl. Sein `Proc` wirft in diesem Moment keine Ausnahme. Es wirft nur in einem Fall. Nämlich dann, wenn Sie das `Proc` ohne Behandlung *wegwerfen*. Behalten Sie also das `Proc` und lesen Sie `.exitcode`. Oder prüfen Sie, ob es wahr oder falsch ist. Dann bleibt der Fehlschlag ein einfacher Wert. Sie können darauf reagieren. Das haben Sie in [Das Proc-Objekt](/de/oop/external-programs/the-proc-object) gesehen.

Beide Fälle haben etwas gemeinsam. Ein Fehlschlag kann *aufgeschoben* werden, also auf später verschoben. Dann lässt er das Programm nicht sofort abstürzen. Er wird zu einem Wert. Sie sehen sich diesen Wert an, wenn Sie bereit sind. `try` und der `CATCH`-Phaser behandeln Fehler, die sofort geworfen werden. Die zwei Wege auf dieser Seite behandeln die anderen Fehler.

{% include nav.html %}
