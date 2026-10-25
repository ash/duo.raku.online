---
title: '`print`'
---

{% include menu.html %}

Вградената рутина `print` прави две неща:

1. Преобразува аргументите си в низ. За целта тя извиква метода `Str` върху тях.
1. Изпраща низа към потока `STDOUT`.

С прости типове данни `print` работи като [`say`](../say). Но тя не добавя символ за нов ред в края.

```raku
print 42;
print 'Raku';
```

Програмата отпечатва стойностите една след друга. Също така, в края на целия изход няма нов ред.

```console
$ raku t.raku
42Raku
```

Някои типове данни пазят много стойности. С тях `print` и `say` могат да дадат различни резултати. Опитайте например масиви и хешове:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # За да разделите частите

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Ето изхода:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Можете също да извикате `print` като метод:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
