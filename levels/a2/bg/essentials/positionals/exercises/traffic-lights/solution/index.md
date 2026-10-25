---
title: 'Solution: Светофари'
---

{% include menu.html %}

Ето идеята на решението. Един масив съдържа четирите състояния на светофара. Ние „завъртаме индексирането“ на този масив:

```raku
my @lights = <yellow red yellow green>;
```

Първо бройте секундите от старта. Използвайте това число направо като индекс в масива. По-късно числото става по-голямо от 3. Тогава се връщате в началото на масива. Операторът за остатък `%` прави това. Дължината на масива е `@lights.elems`. Но тук не е нужно да извиквате метода `elems`. Масивът е операнд на `%`. Затова Raku преобразува името на масива в число. Това преобразуване дава броя на елементите.

## Код

Ето решението:

```raku
my @lights = <yellow red yellow green>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Намерете програмата във файла [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Изход

Стартирайте програмата. След това опитайте и други стойности в програмата.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
