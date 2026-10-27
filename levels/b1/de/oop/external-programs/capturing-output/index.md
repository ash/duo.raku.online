---
title: Ausgabe auffangen
translations_gpt:
---

{% include menu.html %}

Manchmal muss Ihr Programm lesen, was ein externes Programm ausgibt, statt es anzuzeigen. Dafür übergeben Sie beim Start `:out`. Das zurückgegebene `Proc` hat dann einen Handle `.out`, aus dem Sie lesen können:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` schickt die Standardausgabe des Programms in das `Proc`. Der Handle `.out` funktioniert wie die Dateihandles aus dem vorigen Abschnitt. `.slurp` liest auf einmal alles daraus. Das Adverb `:close` ist eine nützliche Abkürzung: Es schließt den Handle nach dem Lesen für Sie. Bei einem Dateihandle haben Sie dasselbe Aufräumen selbst mit `.close` gemacht. So bleibt nichts offen. Schließlich entfernt `.chomp` den Zeilenumbruch, den `echo` am Ende anfügt.

Dasselbe funktioniert mit `shell`. Das ist praktisch, wenn Sie das Ergebnis einer Pipeline auffangen möchten:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Sie können auch den Fehlerstrom auffangen, mit `:err` und dem passenden Handle `.err`. Wenn Sie sowohl `:out` als auch `:err` übergeben, bleiben die beiden Ströme getrennt. Jeder hat seinen eigenen Handle, also können Sie sie einzeln lesen:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Hier gibt der Shell-Befehl eine Zeile auf der Standardausgabe und eine auf der Standardfehlerausgabe aus. Der Teil `>&2` leitet die zweite Zeile dorthin um. Wir haben beide Ströme angefordert, also enthalten `.out` und `.err` sie getrennt. Die normale Ausgabe des Programms wird nie mit seinen Fehlermeldungen vermischt.

Wenn Sie Ausgabe auffangen, können Sie ein externes Programm als Baustein verwenden. Sie führen es aus, lesen sein Ergebnis und arbeiten mit diesen Daten in Ihrem eigenen Programm weiter.

{% include nav.html %}
