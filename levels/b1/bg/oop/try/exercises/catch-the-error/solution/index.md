---
title: 'Решение: Прихванете грешката'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Намерете програмата във файла [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Изход

```
42
False
broken
```

## Коментари

1. Когато блокът се изпълни без грешка, `try` просто дава стойността на блока. Затова `$ok` съдържа `42`.

1. `die` във втория блок хвърля изключение. Затова този блок дава недефинирана стойност, а `$bad.defined` дава `False`.

1. Прихванатото изключение се пази в специалната променлива `$!`. `$!.message` връща текста, който му е бил даден, `broken`.

{% include nav.html %}
