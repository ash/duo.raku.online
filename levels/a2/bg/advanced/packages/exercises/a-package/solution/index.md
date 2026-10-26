---
title: 'Solution: Пакет'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. И променливата, и подпрограмата имат `our`. Затова и двете са част от пространството от имена `Temperature`. Код извън пакета може да стигне до тях.

1. Стигате до променливата с `$Temperature::freezing`. Първо идва сигилът, после името на пакета, после името на променливата. Извиквате подпрограмата като `Temperature::fahrenheit(100)`. За `100` тя изчислява `100 * 9/5 + 32`. Резултатът е `212`.

1. Обикновеният `package` дава само пространството от имена. За библиотека бихме използвали `module` вместо това. Библиотеката можете да използвате отново и отново. По-късно, с обектите, бихме използвали `class`. Но пространството от имена работи по същия начин във всички тези случаи.

{% include nav.html %}
