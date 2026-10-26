---
title: 'Решение: Километри в мили'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Намерете програмата във файла [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Изход

```
6.21
```

## Коментари

1. Преобразуването няма нужда от обект. Затова то е метод на класа. Програмата го извиква направо върху `Converter`.

1. Методът на класа пак може да има параметри. Тук той получава броя километри. Той връща милите.

{% include nav.html %}
