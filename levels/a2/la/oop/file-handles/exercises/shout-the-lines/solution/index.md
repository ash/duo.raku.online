---
title: 'Solutio: Lineas numera'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Inveni codicem fontem in archivo [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Exitus

```
1: apple
2: banana
3: cherry
```

## Commentarii

1. `spurt` tria verba in archivum scribit. Novae lineae verba separant.

1. `.IO.lines` lineas unam post alteram dat. Lineae in fine novam lineam non habent. Numeratorem `$n` servamus. Quisque gyrus anuli 1 ei addit. Itaque quamque lineam cum loco suo in archivo imprimimus.

{% include nav.html %}
