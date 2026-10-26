---
title: Reductionis meta-operatores
translations_gpt:
---

{% include menu.html %}

Meta-operator reductionis est operator ordinarius in uncis quadratis, ut `[+]` vel `[*]`. Listam valorum accipit et operatorem inter omne par eorum ponit. Hoc modo totam listam ad unum valorem reducit.

Exempli gratia, `[+]` omnia elementa listae addit:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

Codex `[+] @data` idem est ac operatorem manu scribere:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Quilibet operator infixus idoneus eodem modo operatur. Cum `[*]` productum listae accipis. Ergo eum ad intervallum `1..$n` applicare potes ut factorialem facile computes:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Hic intervallum `1..$n` numeros ab 1 ad 5 dat, et `[*]` eos multiplicat: `1 * 2 * 3 * 4 * 5`. Eventus est _5!_.

Etiam ad fila coniungenda operatur. Reductio `[~]` listam filorum in unum coniungit:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Etiam operatores comparationis reducere potes. `[<]` tibi dicit an omnis valor maior sit quam valor prior:

```raku
say [<] 1, 2, 3; # True
```

## Reductio triangularis

Si lineam obliquam inversam intra uncos ponis, reductionem _triangularem_ accipis. Omnes eventus intermedios servat, non tantum ultimum:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Quodque elementum eventus est summa partialis: `1`, deinde `1+2`, deinde `1+2+3`, et ita porro. Ultimum est summa totius listae.

{% include nav.html %}
