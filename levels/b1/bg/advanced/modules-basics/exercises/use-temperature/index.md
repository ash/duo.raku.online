---
title: Използвайте конвертора
translations_gpt:
---

{% include menu.html %}

## Задача

Имате модул във файл `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Напишете отделна програма, която използва този модул. Програмата получава температура по Целзий като аргумент от командния ред. Тя я преобразува във Фаренхайт с модула и отпечатва резултата.

## Пример

```console
$ raku -I. temperature.raku 100
212
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
