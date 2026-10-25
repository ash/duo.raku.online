---
title: Алломорфы
---

{% include menu.html %}

Посмотрите на следующую программу. Прежде чем запустить её, попробуйте угадать. Какие входные значения её сломают и на какой строке?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Здесь программа создаёт три скалярные переменные. Две из них, `$i` и `$s`, — типизированные переменные. Это значит, что `$i` может хранить только целые числа, а `$s` — только строки.

Тип, который возвращает `prompt`, зависит от символов, которые мы ввели. Если входная строка может быть целым числом, результат будет типа `IntStr`. Этот тип — _одновременно_ `Int` и `Str`. Поэтому его можно присвоить переменной типа `Int` или переменной типа `Str`. Например, если вы введёте `1234`, программа не сломается.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Тип `IntStr` — это пример так называемого _алломорфа_. Это тип данных, который объединяет два других типа. Вот ещё несколько примеров.

Если вы введёте строку, которая не может быть целым числом, программа сломается. Это происходит, когда мы присваиваем `$input` переменной `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Обратите внимание, что ошибка будет и для числа, которое не является целым. Контейнер для целых чисел не может хранить число с плавающей запятой или рациональное число. Поэтому Raku выдаёт исключение:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Второе присваивание, `$s = $input`, никогда не сломается, потому что строка может принять любой ввод.

🦋 Исходный код этой программы можно найти в файле [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
