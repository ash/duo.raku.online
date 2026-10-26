---
title: '`VAR` izmantošana'
translations_gpt:
---

{% include menu.html %}

`VAR` ir pseidometode. Tā atgriež konteinera objektu aiz mainīgā. Skalāram mainīgajam `.VAR` atgriež tā `Scalar` konteineru.

## `^name`

Tagad jums ir konteineris. Jūs varat noskaidrot tā klases nosaukumu ar `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` uz mainīgā atgriež _vērtības_ tipu. Tas ir `Int` vai `Str`. `.VAR.^name` atgriež _konteinera_ tipu. Abos gadījumos tas ir `Scalar`.

## `default`

Metode `default` atgriež konteinera noklusējuma vērtību. Tukšs konteineris dod jums šo vērtību. Tam nav savas vērtības. Jūs varat paši iestatīt noklusējuma vērtību ar iezīmi `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Varbūt jūs neiestatāt noklusējuma vērtību. Tad noklusējuma vērtība ir konteinera tips. Konteineram bez tipa noklusējuma vērtība ir `Any`. Nav svarīgi, kāda vērtība tajā ir tagad:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Konteineram ar tipu noklusējuma vērtība ir šis tips:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Metode `name` atgriež konteinera nosaukumu ar sigilu:

```raku
my $language;
say $language.VAR.name; # $language
```

Nesajauciet `^name` un `name`. `^name` dod tipu. `name` dod mainīgā nosaukumu.

{% include nav.html %}
