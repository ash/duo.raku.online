---
title: Convertendo generibus cum prefixis operatoribus
---

{% include menu.html %}

Alius modus genus obiecti mutandi est operatoribus praefixis uti. Hi sunt operatores unius tantum characteris. Eos directe ante valorem (vel variabilem) ponis.

`~` | Coactio ad Stringam
`+` | Coactio ad Numerum
`?` | Coactio ad Booleanum

Ecce exemplum quod valorem Booleanum ex integro creat:

```raku
say ?42; # Verum
```

Converto ad stringam simile est:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, ut "-30" habet 3 characteres
```

Nota quod in conversione numerica genus eventus a numero pendet. Compara conversiones sequentes ex stringis:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Ut ad valorem Booleanum convertas, etiam rationem nomine `so` adhibere potes. Ut operator praefixus vel ut methodus operatur:

```raku
my $valor = 42;
say so $valor; # Verum
say $valor.so; # Verum
```

{% include nav.html %}
