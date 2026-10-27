---
title: Das Proc-Objekt
translations_gpt:
---

{% include menu.html %}

Jeder Aufruf von `run` oder `shell` gibt ein `Proc`-Objekt zurück. Es ist ein kleiner Bericht über das Programm. Es sagt Ihnen, welches Programm gelaufen ist und wie es geendet hat. In den früheren Themen haben wir seinen Handle `.out` zum Lesen der Ausgabe benutzt. Aber ein `Proc` enthält mehr als das.

Der nützlichste Teil ist der **Exit-Code**. Er ist eine kleine ganze Zahl. Ein Programm gibt sie an den zurück, der es gestartet hat. Mit dieser Zahl sagt das Programm, ob es funktioniert hat. `0` bedeutet Erfolg. Jede andere Zahl bedeutet einen Fehler. Das Programm wählt diesen Fehlercode selbst. `.exitcode` gibt Ihnen die Zahl:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Oft stellen Sie nur eine Ja-oder-Nein-Frage. Hat es funktioniert? Dafür ist ein `Proc` wahr, wenn der Exit-Code `0` ist. Sonst ist es falsch. Also können Sie das `Proc` direkt prüfen:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

Ein `Proc` merkt sich auch den Befehl, den es gestartet hat. Sie finden ihn in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Passen Sie bei einer Sache auf. Manchmal schlägt ein Befehl fehl. Was ist, wenn Sie sein `Proc` einfach **ignorieren**? Dann löst Raku eine Ausnahme aus. Eine Ausnahme ist ein Fehler, der das Programm anhält. Raku versteckt den Fehler nicht:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Ein anderer Exit-Code als `0` bedeutet meistens ein Problem. Also wirft ein fehlgeschlagenes `Proc` eine Ausnahme, wenn Sie es wegwerfen. Das passiert, wenn das `Proc` seinen Gültigkeitsbereich verlässt. Dann kann kein Code es mehr erreichen. Es geht hier nicht um das Prüfen des Exit-Codes. Es geht um das *Wegwerfen* des Ergebnisses. Legen Sie das `Proc` einfach in eine Variable. Das reicht schon, um die Ausnahme zu vermeiden. Sie müssen die Variable nicht einmal wieder ansehen.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

*Erwarten* Sie also, dass ein Befehl fehlschlagen kann? Dann behalten Sie sein `Proc`. Wenn Sie wissen möchten, was passiert ist, sehen Sie sich `.exitcode` an. Oder prüfen Sie das `Proc` als Wahrheitswert.

{% include nav.html %}
