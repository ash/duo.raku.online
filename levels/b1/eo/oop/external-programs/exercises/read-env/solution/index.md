---
title: 'Solvo: Transdonu variablon al ida procezo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `spurt` kreas `notes.txt` kun tri linioj. Poste ni starigas `%*ENV<NOTES>` al ĝia nomo. Tio metas la dosiernomon en la medion, kiun ĉiu ida programo ricevas.

1. La komando `shell` ricevas tiun medion kaj anstataŭigas `$NOTES` per `notes.txt`. Poste ĝi sendas la dosieron en `wc -l`, kiu kalkulas ĝiajn liniojn. Pro la redirektado `< "$NOTES"`, la eligo estas nur la nombro `3`. Ni kaptas ĝin per `:out` kaj tondas ĝin.

1. Fine, la purigo okazas denove en Raku per `unlink`, kaj ni ne bezonas ŝelon. Forigi dosieron estas simpla operacio de la dosiersistemo. Ne estas kialo lanĉi alian procezon por tio.

{% include nav.html %}
