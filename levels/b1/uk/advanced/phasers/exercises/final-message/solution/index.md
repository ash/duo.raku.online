---
title: 'Розв''язання: Прощальне повідомлення'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Вихідний код можна знайти у файлі [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Вивід

```
processed 3 items
```

## Коментарі

1. Фазер `END` записано перед циклом, але виконується він останнім. Він виконується, коли основний код уже завершився. На той час `$count` уже збільшено тричі.

1. Фазер замикається на `$count`, тобто тримає зв'язок зі змінною. Тож він читає *остаточне* значення. Він не читає `0` з того рядка, де стоїть фазер. Це звичайна причина класти підсумок у `END`.

{% include nav.html %}
