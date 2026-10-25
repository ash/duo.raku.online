---
title: '`print`'
---

{% include menu.html %}

Ето какво прави вградената рутина `print`:

1. Извиква метода `Str` върху аргументите си, за да ги преобразува в низ.
1. Изпраща низа към потока `STDOUT`.

За прости типове данни `print` дава почти същия изход като [`say`](../say). Просто в края няма символ за нов ред.

```raku
print 42;
print 'Raku';
```

Двете стойности се отпечатват точно една след друга. Целият изход също не завършва с нов ред.

```console
$ raku t.raku
42Raku
```

При данни, които съдържат няколко стойности, резултатът може да е различен от `say`. Например, опитайте масиви и хешове:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # За да разделите частите

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Така изглежда изходът:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Можете също да извикате рутината `print` като метод:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
