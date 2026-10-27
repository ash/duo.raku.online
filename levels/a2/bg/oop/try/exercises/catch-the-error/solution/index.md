---
title: 'Решение: Прихванете грешката'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Тук блокът се изпълнява без грешка. Тогава `try` просто дава стойността на блока. Затова `$ok` съдържа `42`.

1. `die` във втория блок хвърля изключение. Затова този блок дава недефинирана стойност. `$bad.defined` дава `False`.

1. Raku пази прихванатото изключение в специалната променлива `$!`. `$!.message` връща текста на изключението, `broken`.

{% include nav.html %}
