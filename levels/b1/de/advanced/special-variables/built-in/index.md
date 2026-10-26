---
title: Eingebaute spezielle Variablen
---

{% include menu.html %}

Raku definiert eine Reihe von Variablen für dich. Die meisten davon sind _dynamisch_, mit dem Twigil `*`. Also kannst du sie überall lesen, wie du bei den [dynamischen Variablen](/de/advanced/special-variables/dynamic-variables) gesehen hast. Du kannst sie sogar für einen Geltungsbereich überschreiben. Hier sind die Variablen, die du am häufigsten brauchen wirst.

## Standardströme

Eingabe und Ausgabe gehen durch drei dynamische Variablen: `$*OUT` für die Standardausgabe, `$*ERR` für die Standardfehlerausgabe und `$*IN` für die Standardeingabe. `say` und `print` schreiben nach `$*OUT`. Um Text stattdessen an die Standardfehlerausgabe zu senden, rufe die Methode auf `$*ERR` auf:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Weil diese Variablen dynamisch sind, kannst du `$*OUT` in einem Block umleiten. Dann schickt alles, was du in diesem Block aufrufst, seine Ausgabe an den neuen Ort. Du musst nichts an diesem Code ändern.

## Das Programm und sein Prozess

Einige Variablen geben Informationen über das laufende Programm selbst:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Ihre Werte ändern sich jedes Mal, wenn du das Programm ausführst. Also gibt es hier keine feste Ausgabe zu zeigen.

## Kommandozeile und Umgebung

Die Argumente und die Umgebung kommen in zwei Containern, die du sofort benutzen kannst:

* `@*ARGS` — die Liste der Kommandozeilenargumente (eine `MAIN`-Subroutine bekommt dieselben)
* `%*ENV` — die Umgebungsvariablen, in einem Hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Diese eingebauten Variablen ersparen dir, dieselben Informationen selbst zu sammeln. Sie sind auch dynamisch, also sucht Raku sie über den Aufrufstapel. Also kannst du jede eingebaute `$*`-Variable für einen Geltungsbereich überschreiben. Das funktioniert genau wie bei einer eigenen `$*`-Variable.

Neben diesen dynamischen Variablen hat Raku auch die eingebauten `?`-Variablen der Kompilierzeit: `$?FILE` und `$?LINE`. Du hast sie schon auf der Seite über [Twigils](/de/advanced/special-variables/twigils) gesehen.

{% include nav.html %}
