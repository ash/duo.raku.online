---
title: 'Решение: Натрупайте журнал'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Намерете програмата във файла [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Изход

```
start
entry 1
entry 2
entry 3
```

## Коментари

1. Първото `spurt` създава нов файл, който съдържа реда `start`.

1. Всяко `spurt` вътре в цикъла използва `:append`. Затова то добавя своя ред след съществуващото съдържание и не заменя файла. Точно така расте журналният файл. Всяка обиколка на цикъла добавя още един ред в края. Същото прави и всяко изпълнение на програмата.

1. Без `:append` всяка обиколка би презаписала файла. Би останал само последният ред.

{% include nav.html %}
