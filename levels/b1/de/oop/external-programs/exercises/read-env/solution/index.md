---
title: 'Lösung: Geben Sie eine Variable an ein Kind weiter'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Du findest den Quellcode in der Datei [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Ausgabe

```
3
```

## Kommentare

1. `spurt` legt `notes.txt` mit drei Zeilen an. Dann setzen wir `%*ENV<NOTES>` auf ihren Namen. Damit kommt der Dateiname in die Umgebung, die jedes Kindprogramm bekommt.

1. Der `shell`-Befehl bekommt diese Umgebung und ersetzt `$NOTES` durch `notes.txt`. Dann schickt er die Datei an `wc -l`, das ihre Zeilen zählt. Wegen der Umleitung `< "$NOTES"` ist die Ausgabe nur die Zahl `3`. Wir fangen sie mit `:out` auf und trimmen sie.

1. Zum Schluss geschieht das Aufräumen wieder in Raku mit `unlink`, und es ist keine Shell nötig. Eine Datei zu löschen ist eine einfache Dateisystemoperation. Es gibt keinen Grund, dafür einen weiteren Prozess zu starten.

{% include nav.html %}
