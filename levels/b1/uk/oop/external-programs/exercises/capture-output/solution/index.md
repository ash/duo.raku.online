---
title: 'Розв''язання: Перехопіть вивід'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `:out` надсилає вивід програми в `Proc`, а не на екран. `.out.slurp(:close)` читає його весь назад. `.trim` прибирає символ нового рядка, який `echo` додає в кінці.

1. Тепер вивід — це звичайний рядок у нашій програмі. Ми працюємо з ним, як із будь-якими іншими даними. `.words.elems` розбиває його за пробілами й рахує частини, і це дає `3`. У цьому й сенс перехоплення виводу. Зовнішня програма стає будівельним блоком, а ми обробляємо її результат далі.

{% include nav.html %}
