---
title: 'Solvo: Kontrolu la elirkodon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `run` redonas `Proc`. Ni tenas ĝin en `$proc` kaj poste legas ĝin. Tio estas grava ĉi tie. Komando povas malsukcesi. Se neniu tenas ĝian `Proc`, Raku ĵetas escepton. Escepto estas eraro, kiu haltigas la programon. Sed ĉi tie ni rigardas la rezulton. Tio validas kiel traktado de la malsukceso.

1. `.exitcode` donas la nombron, kiun la komando redonis. Ĉi tie, ĝi estas `4`. Vi ankaŭ povas testi la `Proc` kiel Boolean valoron. Boolean valoro estas vera aŭ malvera. Tio respondas pli simplan demandon: ĉu la komando funkciis? La `Proc` estas vera nur, kiam la elirkodo estas `0`. Ĉi tie, ĝi estas malvera. Do la programo presas `failure`.

{% include nav.html %}
