---
title: '`print`'
---

{% include menu.html %}

Вбудована рутинна функція `print` робить дві речі:

1. Перетворює свої аргументи на рядок. Для цього вона викликає на них метод `Str`.
1. Відправляє рядок до потоку `STDOUT`.

З простими типами даних `print` працює як [`say`](../say). Але вона не додає символ нового рядка в кінці.

```raku
print 42;
print 'Raku';
```

Програма виводить значення одне за одним. Також у кінці всього виводу немає нового рядка.

```console
$ raku t.raku
42Raku
```

Деякі типи даних зберігають багато значень. З ними `print` і `say` можуть дати різні результати. Спробуйте, наприклад, масиви та хеші:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Щоб розділити частини

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Ось вивід:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Ви також можете викликати `print` як метод:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
