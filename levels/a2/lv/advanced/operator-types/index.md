---
title: Raku operatoru tipi
translations_gpt:
---

{% include menu.html %}

Jūs jau zināt daudzus operatorus, piemēram, `+`, `~` un `++`. Operators strādā ar vērtībām. Šīs vērtības ir tā operandi. Raku sadala operatorus kategorijās. Kategorija ir grupa. Kategorija ir atkarīga no tā, _kur_ operators stāv blakus saviem operandiem. Vēlāk jūs veidosiet savus operatorus. Tad kategorijas jums palīdzēs.

## `prefix`

Prefiksa operatoram ir viens operands. Tas atrodas _pirms_ šī operanda:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Šeit `-` maina skaitļa zīmi. Operators `?` pārvērš vērtību par `True` vai `False`. Tā ir tās Būla vērtība.

## `infix`

Infiksa operators stāv _starp_ diviem operandiem. Jūs zināt daudzus operatorus skaitļiem un virknēm. Lielākā daļa no tiem ir infiksa operatori:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Infiksa operators ne vienmēr ir simbols. Tas var būt arī vārds. Paskatieties uz operatoru `gcd` no sadaļas par [veseliem skaitļiem](/lv/advanced/integers). Tas ir infiksa operators. Jūs rakstāt tā nosaukumu starp diviem operandiem:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Postfiksa operatoram ir viens operands. Tas atrodas _aiz_ šī operanda:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` un `postcircumfix`

Cirkumfiksa operators stāv _ap_ savu operandu. Paskatieties uz kvadrātiekavām, kas izveido masīvu. Tās ir cirkumfiksa operators:

```raku
my @a = [1, 2, 3];
```

Postcirkumfiksa operators arī stāv ap kaut ko. Bet tas atrodas aiz terma. Terms ir, piemēram, mainīgais. Indeksi ir postcirkumfiksa operatori. Šeit indekss ir `[1]` aiz `@a`:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Nosaukumi ir `prefix`, `infix`, `postfix`, `circumfix` un `postcircumfix`. Raku lieto tos pašus vārdus, kad jūs [deklarējat jaunu operatoru](/lv/advanced/user-defined-operators). Jūs to redzēsiet vēlāk.

{% include nav.html %}
