---
title: Eingebaute spezielle Variablen
---

{% include menu.html %}

Raku hat eine Reihe von Variablen für dich bereit. Die meisten davon sind _dynamisch_, mit dem Twigil `*`. Du kennst [dynamische Variablen](/de/advanced/special-variables/dynamic-variables) schon. Also kannst du diese Variablen überall lesen. Du kannst ihnen sogar einen neuen Wert für einen Geltungsbereich geben. Hier sind die Variablen, die du am häufigsten brauchst.

## Standardströme

Eingabe und Ausgabe gehen durch drei dynamische Variablen. `$*OUT` ist die Standardausgabe. `$*ERR` ist die Standardfehlerausgabe, eine Ausgabe für Fehlermeldungen. `$*IN` ist die Standardeingabe. `say` und `print` schreiben nach `$*OUT`. Willst du Text an die Standardfehlerausgabe senden? Dann rufe die Methode auf `$*ERR` auf:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Diese Variablen sind dynamisch. Also kannst du `$*OUT` in einem Block an einen neuen Ort schicken. Dann gibt der Code, den du im Block aufrufst, dort aus. Du änderst diesen Code überhaupt nicht.

## Das Programm und sein Prozess

Manche Variablen sagen dir etwas über das Programm, das gerade läuft:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Ihre Werte sind bei jedem Start des Programms anders. Also zeigen wir die Ausgabe hier nicht.

## Kommandozeile und Umgebung

Raku legt die Argumente und die Umgebung in zwei Container. Sie sind für dich bereit:

* `@*ARGS` — die Liste der Kommandozeilenargumente; eine `MAIN`-Subroutine bekommt dieselben Argumente
* `%*ENV` — die Umgebungsvariablen, in einem Hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Diese eingebauten Variablen sparen dir Arbeit. Du musst diese Informationen nicht selbst holen. Sie sind dynamisch, also sucht Raku sie über den Aufrufstapel. Also kannst du jede eingebaute `$*`-Variable für einen Geltungsbereich überschreiben. Das funktioniert genau wie bei deiner eigenen `$*`-Variable.

Das sind alles dynamische Variablen. Aber Raku hat auch eingebaute Variablen mit dem Twigil `?`. Das sind `$?FILE` und `$?LINE`. Der Compiler setzt ihre Werte, bevor das Programm läuft. Du hast sie schon auf der Seite über [Twigils](/de/advanced/special-variables/twigils) gesehen.

{% include nav.html %}
