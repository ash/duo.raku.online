---
title: 'Solution: Начало първо'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Можете да намерите изходния код във файла [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Изход

```
5
```

## Коментари

1. `BEGIN { 2 + 3 }` се изпълнява по време на компилацията и дава `5`. Когато използвате блок `BEGIN` като израз, той връща стойността си. Тук тази стойност се присвоява на `$compiled`.

1. Пресмятането става само веднъж, по време на компилация. Когато програмата работи, `$compiled` просто съдържа константата `5`. Така `BEGIN` може да пресмята стойности предварително. Той не е само за ранно отпечатване.

{% include nav.html %}
