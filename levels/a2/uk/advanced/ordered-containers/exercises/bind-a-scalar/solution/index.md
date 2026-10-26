---
title: 'Розв''язання: Зв''яжіть скаляр'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Вихідний код можна знайти у файлі [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Вивід

```
9
1
```

## Коментарі

1. Зв'язування через `:=` не робить копії. Воно робить `$bound` другим іменем для контейнера `$source`. Тому `$bound` бачить зміну `$source`. Він виводить `9`.

1. Звичайне присвоєння через `=` копіює значення в інший контейнер. Тому пізніша зміна не зачіпає `$copy`. Він і далі виводить `1`.

1. У цьому суть задачі. Ви бачите два способи поруч. `:=` робить контейнер спільним. `=` копіює значення.

{% include nav.html %}
