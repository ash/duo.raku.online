---
title: Reductionis meta-operatores
translations_gpt:
---

{% include menu.html %}

Meta-operatorem reductionis scribis ut operatorem ordinarium in uncis quadratis. Exempla sunt `[+]` et `[*]`. Listam valorum accipit. Operatorem inter omnia paria valorum ponit. Ita tota lista unus valor fit.

Exempli gratia, `[+]` omnia elementa listae addit:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

`[+] @data` idem est ac omnes operatores manu scribere:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Alii operatores infixi etiam sic operari possunt. Cum `[*]` productum listae accipis. Eum cum intervallo `1..$n` adhibe. Sic factorialem facile invenis:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Hic intervallum `1..$n` numeros ab 1 ad 5 dat. Deinde `[*]` eos multiplicat: `1 * 2 * 3 * 4 * 5`. Hoc est _5!_.

Etiam cum filis operatur. Reductio `[~]` listam filorum in unum filum coniungit:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Etiam operatores comparationis reducere potes. `[<]` tibi dicit an quisque valor maior sit quam valor ante eum:

```raku
say [<] 1, 2, 3; # True
```

## Reductio triangularis

Pone lineam obliquam inversam intra uncos. Tum reductionem _triangularem_ accipis. Eventum cuiusque gradus servat, non tantum ultimum eventum:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Quodque elementum eventus est summa primorum numerorum: `1`, deinde `1+2`, deinde `1+2+3`, et ita porro. Ultimum elementum est summa totius listae.

{% include nav.html %}
