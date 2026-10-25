---
title: '`print`'
---

{% include menu.html %}

Ось що робить вбудована рутинна функція `print`:

1. Викликає метод `Str` на своїх аргументах, щоб перетворити їх на рядок.
1. Відправляє рядок до потоку `STDOUT`.

Для простих типів даних `print` дає майже такий самий вивід, як [`say`](../say). Тільки в кінці немає символу нового рядка.

```raku
print 42;
print 'Raku';
```

Два значення виводяться одразу одне за одним. Весь вивід теж не закінчується новим рядком.

```console
$ raku t.raku
42Raku
```

Для даних, які містять кілька значень, результат може відрізнятися від `say`. Наприклад, спробуйте масиви та хеші:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Щоб розділити частини

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Ось як виглядає вихід:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Ви також можете викликати рутинну функцію `print` як метод:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
