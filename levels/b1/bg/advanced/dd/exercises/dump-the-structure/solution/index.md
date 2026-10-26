---
title: 'Solution: Изведете структурата от данни'
---

{% include menu.html %}

Ето едно възможно решение на задачата.

## Код

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Можете да намерите пълния код във файла [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Резултат

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Коментари

1. `dd @data` отпечатва съдържанието на масива в кодоподобна форма. Този изход отива в стандартния поток за грешки.

1. Методът `.raku` връща същото представяне като низ. След това този низ се вмъква в обикновено съобщение чрез код в къдрави скоби. Накрая `say` отпечатва съобщението в стандартния изход.

1. Двата реда тук изглеждат еднакво, но минават през различни изходни потоци. Първият идва от `dd` и отива в стандартната грешка. Вторият идва от `say` и отива в стандартния изход. Сравнете следното:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
