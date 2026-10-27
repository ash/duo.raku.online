---
title: 'Solvo: Kontrolu la elirkodon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Vi povas trovi la fontkodon en la dosiero [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Eligo

```
4
failure
```

## Komentoj

1. `run` redonas `Proc`. Ĉi tie gravas konservi ĝin en `$proc` kaj poste legi ĝin. Se vi forĵetas la `Proc` de malsukcesa komando, ĝi ĵetas escepton. Sed rigardi la rezulton validas kiel trakti ĝin.

1. `.exitcode` estas la nombro, kiun la komando redonis: `4`. Testi la `Proc` kiel Boolean valoron respondas pli simplan demandon: ĉu ĝi funkciis? Ĝi estas vera nur, kiam la elirkodo estas `0`. Ĉi tie ĝi estas malvera, do la programo presas `failure`.

{% include nav.html %}
