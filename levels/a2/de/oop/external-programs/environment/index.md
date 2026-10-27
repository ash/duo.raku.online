---
title: Die Umgebung
translations_gpt:
---

{% include menu.html %}

Jedes Programm startet mit einer Reihe von _Umgebungsvariablen_. Jede davon ist ein Wert mit einem Namen. Einige Beispiele sind `HOME`, `PATH` und `USER`. Das Betriebssystem gibt diese Werte an das Programm. In Raku finden Sie sie im dynamischen Hash `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Sie lesen eine Umgebungsvariable über ihren Namen. Nehmen Sie den Namen als Schlüssel in `%*ENV`. `%*ENV` ist ein normaler Hash. Also können Sie auch prüfen, ob eine Variable gesetzt ist. Sie können sie sogar für die Programme ändern, die Sie starten:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Sie können einen Schlüssel in `%*ENV` setzen. Dann wird der Schlüssel ein Teil der Umgebung. Jetzt starten Sie ein Programm mit `run` oder `shell`. Dieses Programm ist ein Kind Ihres Programms. Jedes Kindprogramm bekommt dieselbe Umgebung. So geben Sie Einstellungen an ein Kindprogramm weiter:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Ihr Programm setzt die Variable, *bevor* es das Kind startet. Hier startet `run` eine Shell als Kind. Eine Shell ist ein Programm, das Befehle liest und ausführt. Diese Shell hat `GREETING` schon in ihrer eigenen Umgebung. Also kann sie den Wert mit `echo` wieder ausgeben. Sie können jede Variable auf diese Weise setzen. Sie erreicht dann jedes Programm, das Sie später starten.

Der Twigil `*` sagt Ihnen, dass `%*ENV` eine dynamische Variable ist. Ein Twigil ist ein Zeichen nach dem Sigil. `$*OUT` ist auch eine dynamische Variable. Sie haben sie im Teil über Ein- und Ausgabe kennengelernt. Einige andere Variablen mit Stern sagen Ihnen etwas über das laufende Programm. `@*ARGS` enthält die Befehlszeilenargumente. Das sind die Werte nach dem Programmnamen im Befehl. `$*PROGRAM-NAME` ist der Name des Skripts selbst. Zusammen sagen diese Variablen einem Programm, wie es gestartet wurde.

{% include nav.html %}
