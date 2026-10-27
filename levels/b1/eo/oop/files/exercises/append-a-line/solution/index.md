---
title: 'Solvo: Konstruu protokolon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La unua `spurt` kreas freŝan dosieron, kiu enhavas la linion `start`.

1. Ĉiu `spurt` ene de la buklo uzas `:append`. Do ĝi aldonas sian linion post la ekzistanta enhavo kaj ne anstataŭigas la dosieron. Ĝuste tiel kreskas protokoldosiero. Ĉiu rondo de la buklo aldonas unu plian linion al la fino. Same faras ĉiu rulo de programo.

1. Sen `:append`, ĉiu rondo superskribus la dosieron. Restus nur la lasta linio.

{% include nav.html %}
