---
title: 'Решение: Опит или стойност по подразбиране'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Намерете програмата във файла [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Изход

```
default
```

## Коментари

1. Провалилият се блок `try` дава недефинирана стойност.

1. Затова операторът „определено или“ `//` връща дясната си страна, `'default'`. Това е чист начин да се възстановите с резервна стойност в един ред.

{% include nav.html %}
