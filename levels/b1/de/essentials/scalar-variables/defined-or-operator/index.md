---
title: Der defined-or-Operator
---

{% include menu.html %}

Der sogenannte _defined-or_ Operator `//` hilft, wenn eine Variable noch keinen Wert hat. In diesem Fall gibt er Ihnen einen anderen Wert, den Sie stattdessen verwenden können.

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

Der Wert von `$a` wird in der ersten Zeile gesetzt. Deshalb verwendet der Ausdruck `$a // 'gamma'` den aktuellen Wert von `$a`. Die Variable `$b` hat dagegen keinen Startwert bekommen. Deshalb gibt `$b // 'delta'` den Operanden auf der rechten Seite zurück, und das Programm gibt `delta` aus.

## //=

Wenn Sie `//` und `=` kombinieren, bekommen Sie den `//=` Operator. Er weist nur dann einen Wert zu, wenn die Variable nicht definiert ist.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
