---
title: 'Решение: Обърната дума'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

🦋 Намерете програмата във файла [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Изход

```
ukaR
```

## Коментари

1. Методът `reversed` взема собствения `text` на обекта през аксесора му, `$.text`. После извиква вградения `flip` върху него, който обръща низа.

1. Методът се извиква направо върху новия обект `Word`. Нищо не се записва обратно в обекта. `reversed` просто изчислява нова стойност от атрибута и я връща.

1. Забележете, че вътре в класа не ви трябва аксесорът. Можете да прочетете променливата направо:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
