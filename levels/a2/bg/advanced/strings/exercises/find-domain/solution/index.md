---
title: 'Solution: Частта с домейна'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `index('@')` връща `4`. Това е позицията на знака `@`. Броенето започва от нула.

1. `substr($at + 1)` започва един символ след `@`. Тук няма дължина. Затова отива до края на низа. Резултатът е `example.com`.

{% include nav.html %}
