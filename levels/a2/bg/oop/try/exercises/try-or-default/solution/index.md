---
title: 'Решение: Опит или стойност по подразбиране'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Блокът `try` се проваля. Затова стойността му е недефинирана.

1. Затова операторът „определено или“ `//` връща дясната си страна. Това е `'default'`. Това е чист начин да продължите след провал. Трябват ви само един ред и резервна стойност.

{% include nav.html %}
