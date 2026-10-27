---
title: Das Proc-Objekt
translations_gpt:
---

{% include menu.html %}

Jeder Aufruf von `run` oder `shell` gibt ein `Proc`-Objekt zurück. Es ist ein kleiner Bericht, der beschreibt, welches Programm gelaufen ist und wie es geendet hat. Die früheren Themen haben seinen Handle `.out` zum Lesen der Ausgabe benutzt. Aber ein `Proc` enthält mehr als das.

Der nützlichste Teil ist der **Exit-Code**. Mit einer kleinen ganzen Zahl sagt ein Programm dem, der es gestartet hat, ob es gelungen ist. `0` bedeutet Erfolg. Jede andere Zahl ist ein Fehlercode, den das Programm selbst wählt. `.exitcode` gibt Ihnen diese Zahl:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Meistens stellen Sie nur eine Ja-oder-Nein-Frage: Hat es funktioniert? Dafür ist ein `Proc` einfach wahr, wenn der Exit-Code `0` ist. Sonst ist es falsch. Also können Sie es direkt prüfen:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

Ein `Proc` merkt sich auch, welchen Befehl es gestartet hat, in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Auf eine Sache müssen Sie achten. Wenn ein Befehl fehlschlägt und Sie das zurückgegebene `Proc` einfach **ignorieren**, löst Raku eine Ausnahme aus. Raku lässt den Fehlschlag nicht unbemerkt durchgehen:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Ein Exit-Code ungleich null bedeutet meistens, dass etwas schiefgegangen ist. Wenn Sie also ein fehlgeschlagenes `Proc` wegwerfen, wirft es eine Ausnahme. Das passiert, wenn es seinen Gültigkeitsbereich verlässt. Der Auslöser ist das *Wegwerfen* des Ergebnisses, nicht das Ignorieren des Exit-Codes. Es reicht schon, das `Proc` in einer Variablen zu speichern, um die Ausnahme zu vermeiden. Sie müssen es nicht einmal wieder ansehen.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

Wenn Sie also *erwarten*, dass ein Befehl fehlschlagen könnte, behalten Sie sein `Proc`. Sehen Sie sich dann `.exitcode` an oder prüfen Sie es als Wahrheitswert. Tun Sie das immer dann, wenn Sie wissen möchten, was passiert ist.

{% include nav.html %}
