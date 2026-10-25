---
title: Цитиране на стрингови масиви
---

{% include menu.html %}

Някои масиви от низове съдържат само кратки низове без интервали. За такива масиви Raku предлага удобен синтаксис, с който да зададете стойностите им.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Вие решавате дали да добавите допълнителни интервали около ъгловите скоби, или не. Компилаторът приема и двата варианта.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

И двете форми правят същото като тази проста, директна версия:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Масив срещу Списък

Забележете, че в примерите по-горе цитатът `< . . . >` създава `List`, а не `Array`. Можете да проверите това, като извикате метода `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Обаче ако го присвоите на масив, масивът получава същите елементи.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
