---
title: '`print`'
---

{% include menu.html %}

Вот что делает встроенная рутина `print`:

1. Вызывает метод `Str` на своих аргументах, чтобы преобразовать их в строку.
1. Отправляет строку в поток `STDOUT`.

Для простых типов данных `print` выводит почти то же самое, что [`say`](../say). Только в конце нет символа новой строки.

```raku
print 42;
print 'Raku';
```

Два значения печатаются сразу одно за другим. Весь вывод тоже не заканчивается символом новой строки.

```console
$ raku t.raku
42Raku
```

С данными, которые содержат несколько значений, результат может отличаться от `say`. Например, попробуйте массивы и хэши:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Чтобы разделить части

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Вот как выглядит вывод:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Вы также можете вызвать рутину `print` как метод:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
