---
title: 'Solvo: Konstruu protokolon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Vi povas trovi la fontkodon en la dosiero [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Eligo

```
start
entry 1
entry 2
entry 3
```

## Komentoj

1. La unua `spurt` faras novan dosieron kun la linio `start`.

1. Ĉiu `spurt` en la buklo havas `:append`. Do ĝi aldonas sian linion post la malnova enhavo. Ĝi ne anstataŭigas la dosieron. Protokoldosiero kreskas ĝuste tiel. Ĉiu rondo de la buklo aldonas unu plian linion ĉe la fino. Ĉiu rulo de programo povas aldoni linion laŭ la sama maniero.

1. Sen `:append`, ĉiu rondo superskribas la dosieron. Tiam restas nur la lasta linio.

{% include nav.html %}
