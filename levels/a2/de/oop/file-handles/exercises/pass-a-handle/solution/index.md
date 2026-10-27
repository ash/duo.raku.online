---
title: 'Lösung: Übergeben Sie einen Handle an eine Funktion'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub log-line($fh, $message) {
    $fh.say($message);
}

my $fh = open 'log.txt', :w;
log-line($fh, 'started');
log-line($fh, 'working');
log-line($fh, 'done');
$fh.close;

print slurp 'log.txt';
```

🦋 Du findest den Quellcode in der Datei [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Ausgabe

```
started
working
done
```

## Kommentare

1. `open` gibt einen Handle zurück. Dieser Handle ist nur ein Wert in `$fh`. Also können Sie ihn als Argument an `log-line` übergeben. Das machen Sie auch mit einer Zeichenkette oder einer Zahl. In der Subroutine schreibt `$fh.say` durch denselben offenen Handle.

1. Der Handle bleibt bei allen drei Aufrufen offen. Also schreibt jedes `log-line` eine Zeile ans Ende derselben Datei. Dann schreibt `close` alles auf die Festplatte. `slurp` liest die drei Zeilen zurück.

1. So kann man Handles leicht mit Funktionen kombinieren. Eine Funktion kann einen Handle nehmen. Sie kann in ihn schreiben oder aus ihm lesen. Es ist ihr egal, zu welcher Datei der Handle gehört. Der Code, der die Funktion aufruft, wählt die Datei. Das tut er, wenn er die Datei öffnet.

{% include nav.html %}
