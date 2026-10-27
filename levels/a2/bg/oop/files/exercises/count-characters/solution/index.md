---
title: 'Решение: Пребройте символите'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `slurp` прочита файла като низ. `.chars` преброява символите в него. Те са четири.

1. Погледнете файла. Ще видите само тези четири символа. В края няма символ за нов ред.

{% include nav.html %}
