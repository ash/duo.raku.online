---
title: 'Solution: Използвайте конвертора'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

Програмата, `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Можете да намерите двата файла с изходния код в директорията [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Изход

```console
$ raku -I. temperature.raku 100
212
```

## Коментари

1. `use Temperature` зарежда модула и импортира експортираната му подпрограма `c-to-f`. Така програмата може да я извика директно.

1. `sub MAIN($celsius)` получава аргумента от командния ред. Така вие избирате температурата, когато стартирате програмата. Тя не е записана в кода. Ако стартирате програмата без аргумент, Raku автоматично отпечатва съобщение за употреба.

1. Raku трябва да може да намери модула. Ето защо стартирате програмата с `-I.`. Тогава Raku търси `Temperature.rakumod` в текущата директория. Преобразуването на `100` °C дава `212` °F.

{% include nav.html %}
