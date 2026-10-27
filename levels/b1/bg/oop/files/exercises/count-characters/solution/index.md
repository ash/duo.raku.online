---
title: 'Решение: Пребройте символите'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Намерете програмата във файла [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Изход

```
4
```

## Коментари

1. `spurt` записва низа `Raku` във файла.

1. `slurp` го прочита обратно като низ, а `.chars` преброява символите му. Те са четири.

1. Ако погледнете във файла, наистина ще видите само четирите символа. Символ за нов ред не се добавя.

{% include nav.html %}
