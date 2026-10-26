---
title: Tipu ierobežojumi
---

{% include menu.html %}

[Pamatu daļā](/lv/essentials/typed-variables/type-constraints/) jūs iestatījāt mainīgo tipus ar tipu ierobežojumiem. Ir svarīgi ievērot, ka tieši _konteineris_ pārbauda šo noteikumu. Tas izlemj, kuras vērtības tas drīkst pieņemt.

Šī deklarācija izveido skalāru konteineru, kas var glabāt tikai veselus skaitļus:

```raku
my Int $int;
```

Tipizēts konteineris pieņem tikai vērtības, kas atbilst tā tipam. Tāpēc visas šīs piešķiršanas ir derīgas:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Raku šeit automātiski nemaina tipu. Raku valodā skaitlis ar decimālo punktu ir `Rat`. Tāpēc jūs to nevarat piešķirt:

```raku
my Int $int;
$int = 123.45;
```

Kļūdu jūs saņemat jau kompilācijas laikā:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Lai izvairītos no kļūdas, pārveidojiet vērtību paši:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Neļaujiet sevi mulsināt diviem punktiem kodā `123.45.Int`. Pirmais ir decimālais atdalītājs. Otrais izsauc metodi `Int` racionālajai vērtībai, kas ir `Rat`.

{% include nav.html %}
