---
title: 'Solutio: Variabilem processui filio trade'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Inveni codicem fontem in archivo [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Exitus

```
3
```

## Commentarii

1. `spurt` `notes.txt` cum tribus lineis creat. Deinde nomen eius in `%*ENV<NOTES>` ponimus. Sic nomen archivi in ambitum venit, quem omne programma filium accipit.

1. Imperatum `shell` illum ambitum accipit et `$NOTES` in `notes.txt` mutat. Deinde archivum in `wc -l` mittit, quod lineas eius numerat. Propter redirectionem `< "$NOTES"` exitus est solum numerus `3`. Eum per `:out` capimus et amputamus.

1. Denique purgatio in Raku per `unlink` fit, nec interpres requiritur. Archivum delere est operatio simplex systematis archivorum. Nulla causa est cur alium processum ad id incipias.

{% include nav.html %}
