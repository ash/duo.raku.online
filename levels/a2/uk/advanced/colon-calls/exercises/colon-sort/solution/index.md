---
title: 'Розв''язання: Сортування з двокрапкою'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Вихідний код можна знайти у файлі [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Вивід

```
(fig pear kiwi apple)
```

## Коментарі

1. Двокрапка дає `sort` ключ сортування. Вам не потрібні дужки навколо нього.

1. `*.chars` — це вираз Whatever. Він означає «кількість символів кожного елемента». `sort` використовує його як ключ. Тож найкоротше слово йде першим: `fig` (3). Потім ідуть `pear` і `kiwi` (4). Потім іде `apple` (5).

1. `pear` лишається перед `kiwi`. Обидва слова мають однакову довжину. А `sort` — стійкий. Він зберігає старий порядок елементів із рівними ключами.

{% include nav.html %}
