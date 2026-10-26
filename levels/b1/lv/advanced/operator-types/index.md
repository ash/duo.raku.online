---
title: Raku operatoru tipi
translations_gpt:
---

{% include menu.html %}

Jūs jau esat lietojuši daudzus operatorus, piemēram, `+`, `~` un `++`. Operandi ir vērtības, ar kurām operators strādā. Raku operatorus sadala kategorijās pēc tā, _kur_ tie stāv blakus saviem operandiem. Kategoriju zināšana jums palīdzēs vēlāk, kad veidosiet savus operatorus.

## `prefix`

Prefiksa operators atrodas _pirms_ sava vienīgā operanda:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Šeit `-` maina skaitļa zīmi. Operators `?` pārvērš vērtību tās Būla vērtībā.

## `infix`

Infiksa operators stāv _starp_ diviem operandiem. Lielākā daļa aritmētisko un virkņu operatoru, ko jūs zināt, darbojas tieši tā:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Infiksa operatoram nav jābūt simbolam. Tas var būt arī vārds. Piemēram, operators `gcd` no sadaļas par [veseliem skaitļiem](/lv/advanced/integers) ir infiksa operators. Tas ir nosaukums, ko jūs rakstāt starp tā diviem operandiem:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Postfiksa operators atrodas _aiz_ sava vienīgā operanda:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` un `postcircumfix`

Cirkumfiksa operators atrodas _ap_ savu operandu. Kvadrātiekavas, kas izveido masīvu, ir tā piemērs:

```raku
my @a = [1, 2, 3];
```

Postcirkumfiksa operators arī atrodas ap kaut ko, bet tas nāk aiz terma. Indekss, piemēram, `[1]` aiz `@a`, ir postcirkumfiksa operators:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Šie ir kategoriju nosaukumi: `prefix`, `infix`, `postfix`, `circumfix` un `postcircumfix`. Kā jūs redzēsiet vēlāk, Raku lieto tos pašus vārdus, lai [deklarētu jaunu operatoru](/lv/advanced/user-defined-operators).

{% include nav.html %}
