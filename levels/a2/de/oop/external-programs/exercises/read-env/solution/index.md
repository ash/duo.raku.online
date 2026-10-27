---
title: 'Lösung: Geben Sie eine Variable an ein Kind weiter'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `spurt` legt `notes.txt` mit drei Zeilen an. Dann setzen wir `%*ENV<NOTES>` auf den Namen der Datei. So steht der Dateiname jetzt in der Umgebung. Jedes Kindprogramm bekommt diese Umgebung.

1. Der `shell`-Befehl bekommt diese Umgebung. Er ersetzt `$NOTES` durch `notes.txt`. Dann schickt er die Datei in `wc -l`. `wc -l` zählt die Zeilen der Datei. Die Umleitung `< "$NOTES"` ist wichtig. Durch sie ist die Ausgabe nur die Zahl `3`. Wir fangen diese Zahl mit `:out` auf und trimmen sie.

1. Am Ende räumen wir in Raku mit `unlink` auf. Dafür brauchen wir keine Shell. Das Löschen einer Datei ist eine einfache Operation im Dateisystem. Also gibt es keinen Grund, dafür einen weiteren Prozess zu starten. Ein Prozess ist ein laufendes Programm.

{% include nav.html %}
