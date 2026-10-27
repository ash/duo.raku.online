---
title: 'Solvo: Transdonu tenilon al funkcio'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Eligo

```
started
working
done
```

## Komentoj

1. `open` redonas tenilon. Ĉi tiu tenilo estas nur valoro en `$fh`. Do vi povas transdoni ĝin al `log-line` kiel argumenton. Vi faras la samon kun ĉeno aŭ nombro. En la subrutino, `$fh.say` skribas per ĉi tiu sama malfermita tenilo.

1. La tenilo restas malfermita dum ĉiuj tri vokoj. Do ĉiu `log-line` aldonas linion al la fino de la sama dosiero. Poste `close` skribas ĉion al la disko. `slurp` relegas la tri liniojn.

1. Tial oni facile kombinas tenilojn kun funkcioj. Funkcio povas preni tenilon. Ĝi povas skribi al ĝi aŭ legi el ĝi. Ĝi ne zorgas, por kiu dosiero la tenilo estas. La kodo, kiu vokas la funkcion, elektas la dosieron. Ĝi faras tion, kiam ĝi malfermas la dosieron.

{% include nav.html %}
