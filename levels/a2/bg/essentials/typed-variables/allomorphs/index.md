---
title: Аломорфи
---

{% include menu.html %}

Вижте тази програма. Още не я стартирайте. Можете ли да кажете кои входни стойности я чупят? И на кой ред?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Програмата създава три скаларни променливи. Две от тях, `$i` и `$s`, са типизирани променливи. Така `$i` може да съдържа само цели числа. А `$s` може да съдържа само низове.

`prompt` връща стойност. Нейният тип зависи от символите, които въвеждаме. Понякога входният низ може да е цяло число. Тогава резултатът има тип `IntStr`. Този тип е _едновременно_ `Int` и `Str`. Затова можете да го присвоите на променлива от тип `Int`. Можете да го присвоите и на променлива от тип `Str`. Например, въвеждате `1234`. Тогава програмата не се чупи.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Типът `IntStr` е пример за _аломорф_. Аломорфът е тип данни, съставен от два други типа. Ето още няколко примера.

Сега въведете низ, който не може да е цяло число. Програмата се чупи. Това става, когато присвояваме `$input` на `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Понякога входният низ е число, но не е цяло число. Обърнете внимание, че и тогава получавате грешка. Контейнер за цели числа не може да съдържа число с плаваща запетая. Той не може да съдържа и рационално число. Затова получавате изключение:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Второто присвояване, `$s = $input`, никога не се чупи. Низът може да приеме всякакъв вход.

🦋 Можете да намерите изходния код на тази програма във файла [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
