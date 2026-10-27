---
title: 'Solutio: Diarium construe'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Primum `spurt` archivum recens creat quod lineam `start` continet.

1. Quodque `spurt` intra anulum `:append` adhibet. Itaque lineam suam post contentum exsistens addit, neque archivum substituit. Sic prorsus archivum annalium crescit. Quisque gyrus anuli unam lineam amplius ad finem addit. Idem facit quisque cursus programmatis.

1. Sine `:append` quisque gyrus archivum superscriberet. Sola ultima linea maneret.

{% include nav.html %}
