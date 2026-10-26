---
title: 'Розв''язання: Обернене слово'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Метод `reversed` бере власний `text` об'єкта через його аксесор, `$.text`. Потім він викликає для нього вбудований `flip`, який перевертає рядок.

1. Метод викликано прямо для нового об'єкта `Word`. Назад в об'єкт нічого не зберігається. `reversed` просто обчислює нове значення з атрибута й повертає його.

1. Зверніть увагу, що всередині класу аксесор не потрібен. Змінну можна читати напряму:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
