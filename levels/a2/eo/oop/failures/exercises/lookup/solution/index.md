---
title: 'Solvo: Trovita aŭ ne trovita'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `lookup('z')` vokas `fail`. Do ĝi redonas `Failure`. `Failure` estas nedifinita valoro kun eraro interne.

1. La rezulto estas nedifinita. Do la programo presas `not found`. Ĝi ne provas uzi la malsukcesintan valoron.

1. `Failure` ankoraŭ tenas escepton interne. La escepto diras, kio misiris. `$r.exception` prenas ĉi tiun escepton. Tio ankaŭ markas la misfunkcion kiel traktitan. Do ĝi ne kaŭzas eraron poste. Tiam `.message` legas la tekston el `fail`. Ĉi tiu teksto estas `no such key`.

{% include nav.html %}
