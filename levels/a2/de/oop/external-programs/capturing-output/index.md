---
title: Ausgabe auffangen
translations_gpt:
---

{% include menu.html %}

Normalerweise schreibt ein externes Programm auf den Bildschirm. Aber vielleicht möchten Sie seine Ausgabe in Ihrem Programm lesen. Dann geben Sie beim Start `:out` an. Sie bekommen ein `Proc`-Objekt zurück. Es hat einen Handle `.out`. Aus diesem Handle können Sie die Ausgabe lesen:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` schickt die Standardausgabe des Programms in das `Proc`. Die Standardausgabe ist der Strom für die normale Ausgabe eines Programms. Der Handle `.out` funktioniert wie die Dateihandles aus dem vorigen Abschnitt. `.slurp` liest den ganzen Text auf einmal daraus. Das Adverb `:close` ist eine nützliche Abkürzung. Es schließt den Handle nach dem Lesen für Sie. Früher haben Sie das bei einem Dateihandle selbst mit `.close` gemacht. So bleibt nichts offen. Zum Schluss entfernt `.chomp` den Zeilenumbruch am Ende. `echo` fügt diesen Zeilenumbruch an.

Dasselbe funktioniert mit `shell`. Das ist bei einer Pipeline nützlich. In einer Pipeline schickt ein Befehl seine Ausgabe an den nächsten. Mit `shell` können Sie das Endergebnis auffangen:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Sie können auch den Fehlerstrom auffangen. Dieser Strom heißt Standardfehlerausgabe. Ein Programm schreibt seine Fehlermeldungen dorthin. Für diesen Strom nehmen Sie `:err` und den Handle `.err`. Sie können `:out` und `:err` zusammen übergeben. Dann bleiben die zwei Ströme getrennt. Jeder hat seinen eigenen Handle. So können Sie jeden für sich lesen:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Hier gibt der Shell-Befehl zwei Zeilen aus. Eine Zeile geht an die Standardausgabe. Die andere Zeile geht an die Standardfehlerausgabe. Der Teil `>&2` schickt sie dorthin. Wir haben beide Ströme verlangt. Also enthalten `.out` und `.err` sie getrennt. Die normale Ausgabe des Programms mischt sich nie mit seinen Fehlermeldungen.

Das Auffangen der Ausgabe ist sehr nützlich. Ein externes Programm wird so ein Teil Ihres eigenen Programms. Sie führen es aus und lesen sein Ergebnis. Dann macht Ihr Programm weiter und benutzt diese Daten.

{% include nav.html %}
