---
title: 'Розв''язання: Потроєння методом'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Вихідний код можна знайти у файлі [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Вивід

```
21
```

## Коментарі

1. Як метод, `triple` належить об'єкту й використовує його `n`. Вам не треба нічого передавати.

1. У версії з підпрограмою дані надходять як аргумент. А тут дані живуть в об'єкті. Обидві версії дають `21`.

{% include nav.html %}
