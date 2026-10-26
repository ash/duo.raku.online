---
title: 'Решение: Обърната дума'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Методът `reversed` взема `text` на обекта. За това той използва аксесора `$.text`. После извиква вградения метод `flip` върху него. `flip` връща низа отзад напред.

1. Програмата извиква метода направо върху новия обект `Word`. Методът не записва нищо. `reversed` само прави нова стойност от атрибута и я връща.

1. Вътре в класа можете също да прочетете променливата направо. За това не ви трябва аксесорът:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
