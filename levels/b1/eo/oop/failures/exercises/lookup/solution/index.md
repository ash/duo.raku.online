---
title: 'Solvo: Trovita aŭ ne trovita'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Eligo

```
not found
reason: no such key
```

## Komentoj

1. `lookup('z')` vokas `fail`, do ĝi redonas nedifinitan `Failure`.

1. La rezulto estas nedifinita, do la programo presas `not found`. Ĝi ne provas uzi la malsukcesintan valoron.

1. `Failure` ankoraŭ portas la escepton, kiu priskribas, kio misiris. Vi ricevas ĝin per `$r.exception`. Tio ankaŭ markas la misfunkcion kiel traktitan, do ĝi ne ĵetos poste. Tiam `.message` legas la tekston, kiu estis donita al `fail`, `no such key`.

{% include nav.html %}
