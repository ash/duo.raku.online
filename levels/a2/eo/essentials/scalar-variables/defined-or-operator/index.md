---
title: La difinita-aŭ operatoro
---

{% include menu.html %}

Kelkfoje variablo ankoraŭ ne havas valoron. Tiam vi povas uzi alian valoron anstataŭe. Por tio, ekzistas la operatoro `//`. Ĝi nomiĝas la operatoro _difinita-aŭ_.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

Ĉi tiu programo presas:

```
alpha
delta
```

La unua linio donas valoron al `$a`. Do la esprimo `$a // 'gamma'` uzas la nunan valoron de `$a`. La variablo `$b` estas malsama. Ĝi ne havas valoron. Do `$b // 'delta'` donas la valoron dekstre. La programo presas `delta`.

## //=

Kune, `//` kaj `=` faras la operatoron `//=`. Ĝi asignas valoron nur kiam la variablo ne estas difinita.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
