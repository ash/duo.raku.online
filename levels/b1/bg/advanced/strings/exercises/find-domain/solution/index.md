---
title: 'Solution: Частта с домейна'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Можете да намерите изходния код във файла [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Изход

```
example.com
```

## Коментари

1. `index('@')` връща `4`, което е позицията на знака `@`, броена от нула.

1. `substr($at + 1)` започва един символ след `@`. Тъй като няма зададена дължина, той продължава до края на низа. Резултатът е `example.com`.

{% include nav.html %}
