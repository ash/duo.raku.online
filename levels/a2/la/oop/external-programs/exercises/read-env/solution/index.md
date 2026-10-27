---
title: 'Solutio: Variabilem processui filio trade'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `spurt` `notes.txt` cum tribus lineis creat. Deinde nomen archivi in `%*ENV<NOTES>` ponimus. Itaque nomen archivi nunc in ambitu est. Omne programma filium hunc ambitum accipit.

1. Imperatum `shell` hunc ambitum accipit. `$NOTES` in `notes.txt` mutat. Deinde archivum in `wc -l` mittit. `wc -l` lineas archivi numerat. Redirectio `< "$NOTES"` magni momenti est. Propter eam exitus solum numerus `3` est. Hunc numerum per `:out` capimus et amputamus.

1. Ad finem in Raku per `unlink` purgamus. Ad hoc interpretem non requirimus. Archivum delere est operatio simplex systematis archivorum. Itaque nulla causa est alium processum ad hoc incipere. Processus est programma quod currit.

{% include nav.html %}
