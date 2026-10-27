---
title: 'Soluzione: Passate un handle a una funzione'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

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

🦋 Trova il programma nel file [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Output

```
started
working
done
```

## Commenti

1. L'handle che `open` restituisce è solo un valore che sta in `$fh`. Quindi può essere un argomento di `log-line`, come una stringa o un numero qualsiasi. Dentro la subroutine, `$fh.say` scrive attraverso quello stesso handle aperto.

1. L'handle resta aperto durante tutte e tre le chiamate. Quindi ogni `log-line` aggiunge un'altra riga alla fine dello stesso file. Poi `close` salva tutto su disco, e `slurp` rilegge le tre righe.

1. È questo che rende gli handle facili da combinare. Una funzione può prendere un handle e scriverci, o leggerci. Non le importa a quale file punta l'handle. Il codice che chiama la funzione lo decide quando apre il file.

{% include nav.html %}
