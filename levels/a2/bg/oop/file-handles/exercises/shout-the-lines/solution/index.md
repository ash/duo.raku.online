---
title: 'Решение: Номерирайте редовете'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Намерете програмата във файла [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Изход

```
1: apple
2: banana
3: cherry
```

## Коментари

1. `spurt` записва трите думи във файла. Новите редове разделят думите.

1. `.IO.lines` дава редовете един по един. Редовете нямат нов ред в края. Държим брояч `$n`. Всяка обиколка на цикъла добавя 1 към него. Така всеки ред се отпечатва с мястото си във файла.

{% include nav.html %}
