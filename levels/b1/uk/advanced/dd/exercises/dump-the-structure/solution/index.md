---
title: 'Розв''язання: Вивести дамп структури даних'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

## Код

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Вихідний код можна знайти у файлі [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Вивід

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Коментарі

1. `dd @data` виводить вміст масиву у формі, схожій на код. Цей вивід потрапляє до стандартного потоку помилок.

1. Метод `.raku` повертає те саме подання як рядок. Потім цей рядок вставляється у звичайне повідомлення через код у фігурних дужках. Після цього `say` виводить повідомлення у стандартний вивід.

1. Тут обидва рядки виглядають однаково, але вони проходять через різні потоки виводу. Перший походить від `dd` і йде у стандартний потік помилок. Другий походить від `say` і йде у стандартний вивід. Порівняйте:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
