---
title: Die Umgebung
translations_gpt:
---

{% include menu.html %}

Jedes Programm startet mit einer Reihe von _Umgebungsvariablen_. Das sind Werte mit Namen wie `HOME`, `PATH` oder `USER`, die das Betriebssystem bereitstellt. In Raku stehen sie im dynamischen Hash `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Um eine Umgebungsvariable zu lesen, verwenden Sie ihren Namen als Schlüssel in `%*ENV`. Da `%*ENV` ein gewöhnlicher Hash ist, können Sie auch prüfen, ob eine Variable gesetzt ist. Sie können sie auch für die Programme ändern, die Sie starten:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Wenn Sie einen Schlüssel in `%*ENV` setzen, wird er Teil der Umgebung. Jedes Programm, das Sie danach mit `run` oder `shell` starten, bekommt diese Umgebung auch. So geben Sie Einstellungen an ein Kindprogramm weiter:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Die Variable wird in der Umgebung Ihres Programms gesetzt, *bevor* das Kind startet. Also hat die Shell, die `run` startet, `GREETING` schon in ihrer eigenen Umgebung. Sie kann den Wert mit `echo` wieder ausgeben. Jede Variable, die Sie so setzen, erreicht jedes Programm, das Sie später starten.

Der Twigil `*` zeigt, dass `%*ENV` eine dynamische Variable ist. Das gilt auch für `$*OUT`, das Sie im Teil über Ein- und Ausgabe gesehen haben. Einige andere Variablen mit Stern beschreiben die Welt des laufenden Programms. `@*ARGS` enthält die Befehlszeilenargumente, und `$*PROGRAM-NAME` ist der Name des Skripts selbst. Zusammen helfen sie einem Programm, die Situation zu verstehen, in der es gestartet wurde.

{% include nav.html %}
