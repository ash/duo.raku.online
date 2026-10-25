---
title: Der defined-or-Operator
---

{% include menu.html %}

Manchmal hat eine Variable noch keinen Wert. Dann können Sie stattdessen einen anderen Wert verwenden. Dafür gibt es den `//` Operator. Er heißt _defined-or_ Operator.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

Dieses Programm gibt aus:

```
alpha
delta
```

Die erste Zeile gibt `$a` einen Wert. Also verwendet der Ausdruck `$a // 'gamma'` den aktuellen Wert von `$a`. Die Variable `$b` ist anders. Sie hat keinen Wert. Also gibt `$b // 'delta'` den Wert auf der rechten Seite zurück. Das Programm gibt `delta` aus.

## //=

Zusammen ergeben `//` und `=` den `//=` Operator. Er weist nur dann einen Wert zu, wenn die Variable nicht definiert ist.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
