---
title: 'Solvo: Transdonu tenilon al funkcio'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La tenilo, kiun `open` redonas, estas nur valoro tenata en `$fh`. Do ĝi povas esti argumento de `log-line`, kiel ĉiu ĉeno aŭ nombro. Ene de la subrutino, `$fh.say` skribas per tiu sama malfermita tenilo.

1. La tenilo restas malfermita dum ĉiuj tri vokoj. Do ĉiu `log-line` aldonas plian linion al la fino de la sama dosiero. Poste `close` konservas ĉion sur disko, kaj `slurp` relegas la tri liniojn.

1. Tio faras tenilojn facile kombineblaj. Funkcio povas preni tenilon kaj skribi al ĝi, aŭ legi el ĝi. Ĝi ne zorgas, al kiu dosiero la tenilo montras. La kodo, kiu vokas la funkcion, decidas tion, kiam ĝi malfermas la dosieron.

{% include nav.html %}
