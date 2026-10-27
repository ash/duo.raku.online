---
title: 'Lösung: Übergeben Sie einen Handle an eine Funktion'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Handle, den `open` zurückgibt, ist nur ein Wert in `$fh`. Also kann er ein Argument von `log-line` sein, wie jede Zeichenkette oder Zahl. In der Subroutine schreibt `$fh.say` durch denselben offenen Handle.

1. Der Handle bleibt während aller drei Aufrufe offen. Also hängt jedes `log-line` eine weitere Zeile an das Ende derselben Datei an. Dann speichert `close` alles auf der Festplatte, und `slurp` liest die drei Zeilen zurück.

1. Das macht Handles leicht kombinierbar. Eine Funktion kann einen Handle nehmen und in ihn schreiben oder aus ihm lesen. Es ist ihr egal, auf welche Datei der Handle zeigt. Das entscheidet der Code, der die Funktion aufruft, wenn er die Datei öffnet.

{% include nav.html %}
