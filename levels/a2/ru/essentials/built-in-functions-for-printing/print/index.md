---
title: '`print`'
---

{% include menu.html %}

Встроенная рутина `print` делает две вещи:

1. Преобразует свои аргументы в строку. Для этого она вызывает на них метод `Str`.
1. Отправляет строку в поток `STDOUT`.

С простыми типами данных `print` работает как [`say`](../say). Но `print` не добавляет в конце символ новой строки.

```raku
print 42;
print 'Raku';
```

Программа печатает значения одно за другим. Ещё в конце всего вывода нет символа новой строки.

```console
$ raku t.raku
42Raku
```

Некоторые типы данных хранят много значений. С ними `print` и `say` могут дать разный результат. Попробуйте, например, массивы и хэши:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Чтобы разделить части

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Вот вывод:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Вы также можете вызвать `print` как метод:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
