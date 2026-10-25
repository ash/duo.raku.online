---
title: 'Solution: Рекурсивен факториел'
---

{% include menu.html %}

Факториелът е много полезно упражнение, защото има много начини да се реши. Този път използваме рекурсия, което означава, че функцията извиква сама себе си.

## Код 1

Ето кода на решението. Обърнете внимание, че трябва да проверите условие, за да спрете рекурсията. Иначе тя ще продължи безкрайно.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Намерете програмата във файла [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Код 2

В такъв код постфиксната форма на `if` често е по-добра. Тя ви позволява да се върнете от функцията веднага. Това прави кода по-чист и премахва много отстъпи и пунктуация.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Намерете актуализираната програма във файла [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Пример

Стартирайте програмата и проверете резултата. Между другото, знаете ли, че шест седмици имат точно _10!_ секунди?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
