---
title: 'Solution: Анонимен квадрат'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Можете да намерите изходния код във файла [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Изход

```
(1 4 9)
```

## Коментари

1. `sub ($x) { $x * $x }` няма име и никога не се съхранява в променлива. Тя отива направо в `map` като неин аргумент.

1. `map` я прилага към всеки елемент от `1, 2, 3` и ги повдига на квадрат, което дава `(1 4 9)`. Да подадете анонимна подпрограма направо, както тук, е най-честата причина да напишете такава.

{% include nav.html %}
