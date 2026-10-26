---
title: Tipu ierobežojumi
---

{% include menu.html %}

[Pamatu daļā](/lv/essentials/typed-variables/type-constraints/) jūs iemācījāties dot mainīgajam tipu. Jūs to darījāt ar tipa ierobežojumu. Šeit ir svarīga lieta. Šo noteikumu pārbauda _konteineris_. Tas izlemj, kuras vērtības tas pieņem.

Šī deklarācija izveido skalāru konteineru. Tas var glabāt tikai veselus skaitļus:

```raku
my Int $int;
```

Konteineris ar tipu pieņem tikai vērtības, kas der tā tipam. Tāpēc visas šīs piešķiršanas strādā:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Šajā gadījumā Raku pats nemaina tipu. Raku valodā skaitlis ar decimālo punktu ir `Rat` vērtība. Tāpēc jūs nevarat to piešķirt:

```raku
my Int $int;
$int = 123.45;
```

Jūs saņemat kļūdu kompilācijas laikā. Tas notiek pirms programmas palaišanas:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Pārveidojiet vērtību paši. Tad kļūdas nav:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Kodā `123.45.Int` ir divi punkti. Neļaujiet tiem jūs mulsināt. Pirmais punkts ir decimālais atdalītājs. Otrais punkts izsauc metodi `Int`. Šī metode strādā ar `Rat` vērtību, racionālu skaitli.

{% include nav.html %}
