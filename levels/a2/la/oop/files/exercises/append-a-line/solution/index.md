---
title: 'Solutio: Diarium construe'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Inveni codicem fontem in archivo [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Exitus

```
start
entry 1
entry 2
entry 3
```

## Commentarii

1. Primum `spurt` novum archivum cum linea `start` facit.

1. Quodque `spurt` in anulo `:append` habet. Itaque lineam suam post contentum vetus addit. Archivum non substituit. Archivum annalium hoc ipso modo crescit. Quisque gyrus anuli unam lineam amplius in fine addit. Quisque cursus programmatis eodem modo lineam addere potest.

1. Sine `:append` quisque gyrus archivum superscribit. Tum sola ultima linea manet.

{% include nav.html %}
