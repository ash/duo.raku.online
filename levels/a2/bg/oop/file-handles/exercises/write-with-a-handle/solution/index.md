---
title: 'Решение: Запис с манипулатор'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 Намерете програмата във файла [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Изход

```
1
2
3
```

## Коментари

1. `open` с флага `:w` дава манипулатор за писане. Манипулаторът остава отворен през целия цикъл. Затова всяко `$fh.say` добавя още един ред. Тук манипулаторът е по-добър от `spurt`. `spurt` отваря файла отново всеки път.

1. `close` записва всички данни на диска. Затова `slurp` след него прочита обратно и трите реда.

{% include nav.html %}
