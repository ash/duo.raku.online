---
title: Weiche Fehlschläge
translations_gpt:
---

{% include menu.html %}

Eine Ausnahme mit `die` zu werfen hält sofort alles an. Manchmal ist das zu stark. Vielleicht möchten Sie, dass eine Subroutine meldet, dass sie kein Ergebnis liefern konnte. Aber der Aufrufer soll entscheiden, ob das fatal ist. Dafür hat Raku _weiche Fehlschläge_, die Sie mit `fail` erzeugen.

Wenn eine Subroutine `fail` aufruft, wirft sie nicht sofort eine Ausnahme. Stattdessen gibt sie dem Aufrufer ein besonderes `Failure`-Objekt zurück. Ein `Failure` ist undefiniert, also kann der Aufrufer in Ruhe darauf prüfen:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

Der erfolgreiche Aufruf gibt `5` zurück. Der fehlschlagende Aufruf gibt ein `Failure` zurück, und `defined` ergibt dafür `False`. Also kann der Aufrufer das Ergebnis prüfen, bevor er es verwendet.

Warum heißt ein `Failure` _weich_? Es wird nur in einem Fall zu einer echten, geworfenen Ausnahme. Das passiert, wenn Sie es als Wert verwenden, ohne es vorher zu prüfen. Solange Sie es behandeln, zum Beispiel mit einem Test auf `defined`, bleibt es still. So kann eine Subroutine ein Problem melden, ohne das ganze Programm anzuhalten.

## Das haben Sie schon einmal gesehen

Diese verzögerte Art von Fehlschlag kommt nicht nur von `fail`. Früher in diesem Teil ist Ihnen dieselbe Idee zweimal begegnet.

Eine **Division durch null** erzeugt still einen Wert. Die Division wirft erst, wenn Sie diesen Wert tatsächlich verwenden:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

Ein **fehlschlagendes externes Programm** gibt ein `Proc` zurück. Es wirft nur, wenn Sie es ohne Behandlung wegwerfen. Wenn Sie es speichern und ansehen, bleibt es ein stiller Wert:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

In jedem dieser Fälle hält ein Problem das Programm nicht in dem Moment an, in dem es passiert. Stattdessen wird es zu einem Wert, den Sie prüfen können. Er wird erst dann zu einer geworfenen Ausnahme, wenn Sie ihn ungeprüft verwenden oder ignorieren. Das Thema [Nicht jeder Fehler tritt sofort auf](/de/oop/try/deferred-errors) zeigt diese beiden Beispiele nebeneinander.

{% include nav.html %}
