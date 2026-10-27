---
title: Weiche Fehlschläge
translations_gpt:
---

{% include menu.html %}

Eine Ausnahme von `die` hält sofort alles an. Manchmal ist das zu viel. Vielleicht kann eine Subroutine kein Ergebnis liefern. Sie muss dieses Problem melden. Aber der Aufrufer muss entscheiden, ob das Programm anhält. Der Aufrufer ist der Code, der die Subroutine aufgerufen hat. Für diesen Fall hat Raku _weiche Fehlschläge_. Sie erzeugen sie mit `fail`.

Eine Subroutine kann `fail` aufrufen. Dann wirft sie nicht sofort eine Ausnahme. Stattdessen gibt sie dem Aufrufer ein besonderes `Failure`-Objekt zurück. Ein `Failure` ist ein Wert mit einem Fehler darin. Es ist undefiniert. Also kann der Aufrufer in Ruhe darauf prüfen:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

Der erste Aufruf funktioniert und gibt `5` zurück. Der zweite Aufruf schlägt fehl. Er gibt ein `Failure` zurück. Für dieses Objekt ergibt `defined` den Wert `False`. Also kann der Aufrufer das Ergebnis prüfen, bevor er es benutzt.

Warum heißt ein `Failure` _weich_? Es wird nur in einem Fall zu einer echten, geworfenen Ausnahme. Das ist der Fall, wenn Sie es ohne Prüfung als Wert benutzen. Aber Sie können es behandeln, zum Beispiel mit einem Test auf `defined`. Dann bleibt es still. Also kann eine Subroutine ein Problem melden. Das ganze Programm muss nicht anhalten.

## Das kennen Sie schon

Bei dieser Art von Fehlschlag kommt der Fehler erst später. Nicht nur `fail` arbeitet so. Früher in diesem Teil haben Sie dieselbe Idee zweimal gesehen.

Eine **Division durch null** erzeugt still einen Wert. Die Division wirft erst dann eine Ausnahme, wenn Sie den Wert wirklich benutzen:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

Ein **fehlschlagendes externes Programm** gibt ein `Proc` zurück. Es wirft nur in einem Fall eine Ausnahme. Nämlich dann, wenn Sie das `Proc` ohne Behandlung wegwerfen. Behalten Sie das `Proc` und sehen Sie es sich an. Dann bleibt es ein stiller Wert:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

In jedem dieser Fälle hält ein Problem das Programm nicht sofort an. Es wird zu einem Wert. Sie können diesen Wert prüfen. Er wird nur in zwei Fällen zu einer geworfenen Ausnahme. Sie benutzen ihn ohne Prüfung, oder Sie ignorieren ihn. Das Thema [Nicht jeder Fehler tritt sofort auf](/de/oop/try/deferred-errors) zeigt beide Beispiele zusammen.

{% include nav.html %}
