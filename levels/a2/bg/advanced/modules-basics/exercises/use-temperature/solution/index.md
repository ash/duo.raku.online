---
title: 'Solution: Използвайте конвертора'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `use Temperature` зарежда модула. Той импортира и експортираната подпрограма `c-to-f`. Затова програмата може да я извика директно.

1. `sub MAIN($celsius)` получава аргумента от командния ред. Така вие избирате температурата, когато стартирате програмата. Тя не е фиксирана в кода. Без аргумент Raku автоматично отпечатва съобщение за употреба. Това съобщение показва как да стартирате програмата.

1. Raku трябва да може да намери модула. Затова стартирате програмата с `-I.`. Тогава Raku търси `Temperature.rakumod` в текущата директория. Програмата превръща `100` °C в `212` °F.

{% include nav.html %}
