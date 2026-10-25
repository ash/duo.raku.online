---
title: 'Solution: Рекурсивен факториел'
---

{% include menu.html %}

Факториелът е много полезно упражнение. Можете да го решите по много различни начини. Този път използваме рекурсия. Това означава, че функцията извиква сама себе си.

## Код 1

Ето кода на решението. Обърнете внимание, че трябва да проверите едно условие. Това условие спира рекурсията. Без него рекурсията продължава безкрайно.

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

В такъв код постфиксната форма на `if` често е по-добра. Тук `if` идва след `return`. Така функцията връща резултат веднага. Кодът става по-чист. В него има по-малко отстъпи и пунктуация.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Намерете актуализираната програма във файла [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Пример

Стартирайте програмата и проверете резултата. Ето един интересен факт. В шест седмици има точно _10!_ секунди.

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
