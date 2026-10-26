---
title: 'Solution: Принудете до число'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my @a = 1, 2, 3;
say +@a;
```

🦋 Можете да намерите изходния код във файла [force-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/force-a-number.raku).

## Резултат

```
3
```

## Коментари

1. Префиксът `+` задава числов контекст.

1. В числов контекст масивът се превръща в броя на елементите си. Затова резултатът е `3`.

{% include nav.html %}
