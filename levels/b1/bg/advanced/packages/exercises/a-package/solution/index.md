---
title: 'Solution: Пакет'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Можете да намерите изходния код във файла [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Изход

```
0
212
```

## Коментари

1. И променливата, и подпрограмата са декларирани с `our`. Така и двете стават част от пространството от имена `Temperature` и можете да достигнете до тях отвън.

1. До променливата се достига като `$Temperature::freezing`: сигилът, името на пакета, след това името на променливата. Подпрограмата се извиква като `Temperature::fahrenheit(100)`. Преобразуването на `100` дава `100 * 9/5 + 32`, което е `212`.

1. Обикновеният `package` ви дава само пространството от имена. За библиотека за повторна употреба бихме използвали `module` вместо това. Когато работим с обекти, бихме използвали `class`. Но пространството от имена работи по същия начин във всеки от случаите.

{% include nav.html %}
