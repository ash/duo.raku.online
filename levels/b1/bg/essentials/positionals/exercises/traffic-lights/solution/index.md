---
title: 'Solution: Светофари'
---

{% include menu.html %}

Идеята на решението е да се „завърти индексирането“ на един масив. Масивът съдържа четирите състояния на светофара:

```raku
my @lights = <yellow red yellow green>;
```

Отначало броят на секундите от старта се използва направо като индекс. Когато той стане по-голям от 3, вие се връщате в началото на масива. Операторът за остатък `%` прави това. Дължината на масива е `@lights.elems`. Но с `%` не е нужно да извиквате метода `elems`. Масивът е операнд на `%`, така че името му се преобразува в число. Това преобразуване е създадено така, че да дава броя на елементите.

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

Стартирайте програмата. Опитайте също и други стойности в програмата.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
