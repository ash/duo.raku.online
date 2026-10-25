---
title: Алломорфы
---

{% include menu.html %}

Посмотрите на эту программу. Пока не запускайте её. Можете ли вы сказать, какие входные значения её ломают? И на какой строке?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Программа создаёт три скалярные переменные. Две из них, `$i` и `$s`, — типизированные переменные. Поэтому `$i` может хранить только целые числа. А `$s` может хранить только строки.

`prompt` возвращает значение. Его тип зависит от символов, которые мы вводим. Иногда входная строка может быть целым числом. Тогда у результата тип `IntStr`. Этот тип — _одновременно_ `Int` и `Str`. Поэтому его можно присвоить переменной типа `Int`. Его можно присвоить и переменной типа `Str`. Например, вы вводите `1234`. Тогда программа не ломается.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Тип `IntStr` — это пример _алломорфа_. Алломорф — это тип данных из двух других типов. Вот ещё несколько примеров.

Теперь введите строку, которая не может быть целым числом. Программа ломается. Это происходит, когда мы присваиваем `$input` переменной `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Иногда входная строка — это число, но не целое. Обратите внимание: тогда вы тоже получаете ошибку. Контейнер для целых чисел не может хранить число с плавающей запятой. Рациональное число он тоже не может хранить. Поэтому вы получаете исключение:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Второе присваивание, `$s = $input`, никогда не ломается. Строка может принять любой ввод.

🦋 Исходный код этой программы можно найти в файле [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
