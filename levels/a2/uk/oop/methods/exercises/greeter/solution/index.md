---
title: 'Розв''язання: Обернене слово'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Вихідний код можна знайти у файлі [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Вивід

```
ukaR
```

## Коментарі

1. Метод `reversed` бере `text` об'єкта. Для цього він використовує аксесор `$.text`. Потім він викликає для нього вбудований метод `flip`. `flip` повертає рядок задом наперед.

1. Програма викликає метод прямо для нового об'єкта `Word`. Метод нічого не зберігає. `reversed` лише робить нове значення з атрибута й повертає його.

1. Усередині класу змінну можна також читати напряму. Для цього аксесор не потрібен:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
