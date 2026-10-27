---
title: 'Розв''язання: Перехопіть вивід'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Вихідний код можна знайти у файлі [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Вивід

```
3
```

## Коментарі

1. `:out` надсилає вивід у `Proc`. Він не йде на екран. `.out.slurp(:close)` читає весь цей вивід назад. `.trim` прибирає символ нового рядка в кінці. `echo` додає цей символ.

1. Тепер вивід — це звичайний рядок у нашій програмі. Ми працюємо з ним, як із будь-якими іншими даними. `.words.elems` розбиває рядок за пробілами. Потім він рахує частини. Результат — `3`. Ось навіщо ми перехоплюємо вивід. Зовнішня програма стає однією частиною нашої роботи. Ми використовуємо її результат у наступних кроках.

{% include nav.html %}
