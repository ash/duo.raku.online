---
title: '`VAR` izmantošana'
translations_gpt:
---

{% include menu.html %}

`VAR` ir pseidometode, kas atgriež konteinera objektu aiz mainīgā. Skalāram mainīgajam `.VAR` izsaukums dod `Scalar` konteineru, kas ir aiz tā.

## `^name`

Ar konteineru jūs varat noskaidrot tā klases nosaukumu, izmantojot `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` uz mainīgā dod _vērtības_ tipu, `Int` vai `Str`. Bet `.VAR.^name` dod _konteinera_ tipu, kas abos gadījumos ir `Scalar`.

## `default`

Metode `default` atgriež konteinera noklusējuma vērtību. To jūs saņemat, kad konteineram nav savas vērtības. Jūs varat to iestatīt paši ar iezīmi `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Ja jūs neiestatāt noklusējuma vērtību, noklusējuma vērtība ir konteinera tips. Konteineram bez tipa tā ir `Any`. Tā pašreizējai vērtībai nav nozīmes:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Tipizētam konteineram tā ir ierobežojumā norādītais tips:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Metode `name` dod konteinera nosaukumu kopā ar tā sigilu:

```raku
my $language;
say $language.VAR.name; # $language
```

Uzmanieties, lai nesajauktu `^name` un `name`. Pirmais dod tipu, bet otrais dod paša mainīgā nosaukumu.

{% include nav.html %}
