---
title: Използвайте конвертора
translations_gpt:
---

{% include menu.html %}

## Задача

Ето модул във файла `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Напишете отделна програма. Тя използва този модул. Програмата получава температура по Целзий като аргумент от командния ред. С модула тя превръща температурата във Фаренхайт. След това отпечатва резултата.

## Пример

```console
$ raku -I. temperature.raku 100
212
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
