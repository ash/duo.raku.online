---
title: 'Розв''язання: Зв''яжіть скаляр'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. Зв'язування через `:=` не робить копії. Воно робить `$bound` ще одним іменем того самого контейнера, що й `$source`. Тому зміну `$source` видно через `$bound`, який виводить `9`.

1. Звичайне присвоєння через `=` копіює значення в окремий контейнер. Тому пізніша зміна не впливає на `$copy`, і він досі виводить `1`.

1. Уся суть у тому, щоб побачити ці два способи поруч. `:=` робить контейнер спільним, а `=` робить копію значення.

{% include nav.html %}
