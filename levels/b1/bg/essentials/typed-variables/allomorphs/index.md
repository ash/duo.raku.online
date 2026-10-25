---
title: Аломорфи
---

{% include menu.html %}

Вижте следната програма. Преди да я стартирате, опитайте да познаете. Кои входни стойности биха я счупили и на кой ред?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Тук програмата създава три скаларни променливи. Две от тях, `$i` и `$s`, са типизирани променливи. Това означава, че `$i` може да съхранява само цели числа, а `$s` може да съхранява само низове.

Типът, който `prompt` връща, зависи от символите, които сме въвели. Ако входният низ може да е цяло число, резултатът е от тип `IntStr`. Този тип е _едновременно_ `Int` и `Str`. Затова можете да го присвоите на променлива от тип `Int` или на променлива от тип `Str`. Например, ако въведете `1234`, програмата не се чупи.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Типът `IntStr` е пример за така наречения _аломорф_. Това е тип данни, който съчетава два други типа. Ето още няколко примера.

Ако въведете низ, който не може да е цяло число, програмата се чупи. Това става в момента, когато присвояваме `$input` на `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Забележете, че получавате грешка и за число, което не е цяло. Контейнер за цели числа не може да съхранява число с плаваща запетая или рационално число. Затова Raku хвърля изключение:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Второто присвояване, `$s = $input`, никога няма да се счупи, защото низът може да приеме всякакъв вход.

🦋 Можете да намерите изходния код на тази програма във файла [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
