---
title: 'Решение: Натрупайте журнал'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Първото `spurt` прави нов файл с реда `start`.

1. Всяко `spurt` в цикъла има `:append`. Затова то добавя своя ред след старото съдържание. То не заменя файла. Точно така расте журналният файл. Всяка обиколка на цикъла добавя още един ред в края. Всяко изпълнение на програма може да добави ред по същия начин.

1. Без `:append` всяка обиколка презаписва файла. Тогава остава само последният ред.

{% include nav.html %}
