---
title: 'Solvo: Transdonu variablon al ida procezo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Vi povas trovi la fontkodon en la dosiero [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Eligo

```
3
```

## Komentoj

1. `spurt` kreas `notes.txt` kun tri linioj. Poste ni metas la nomon de la dosiero en `%*ENV<NOTES>`. Do la dosiernomo nun estas en la medio. Ĉiu ida programo ricevas ĉi tiun medion.

1. La komando `shell` ricevas ĉi tiun medion. Ĝi anstataŭigas `$NOTES` per `notes.txt`. Poste ĝi sendas la dosieron en `wc -l`. `wc -l` kalkulas la liniojn de la dosiero. La redirektado `< "$NOTES"` estas grava. Pro ĝi, la eligo estas nur la nombro `3`. Ni kaptas ĉi tiun nombron per `:out` kaj tondas ĝin.

1. Fine, ni purigas en Raku per `unlink`. Ni ne bezonas ŝelon por tio. Forigi dosieron estas simpla operacio de la dosiersistemo. Do ne estas kialo lanĉi alian procezon por tio. Procezo estas ruliĝanta programo.

{% include nav.html %}
