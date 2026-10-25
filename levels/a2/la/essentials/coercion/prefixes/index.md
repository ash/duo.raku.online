---
title: Convertendo generibus cum prefixis operatoribus
---

{% include menu.html %}

Genus obiecti etiam operatoribus praefixis mutare potes. Quisque horum operatorum unus tantum character est. Eum statim ante valorem vel variabilem ponis.

`~` | Convertit ad stringam
`+` | Convertit ad numerum
`?` | Convertit ad valorem Booleanum

Ecce exemplum. Valorem Booleanum ex integro facit:

```raku
say ?42; # Verum
```

Conversio ad stringam eodem modo operatur:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, ut "-30" habet 3 characteres
```

Nota hoc de conversione ad numerum. Genus eventus diversum esse potest. Id a numero pendet. Compara has conversiones ex stringis:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Pro conversione ad valorem Booleanum etiam `so` uti potes. Eo ut operatore praefixo uti potes. Vel eo ut methodo uti potes:

```raku
my $valor = 42;
say so $valor; # Verum
say $valor.so; # Verum
```

{% include nav.html %}
