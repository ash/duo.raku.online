---
title: Skaitliskais, virkņu un Būla konteksts
---

{% include menu.html %}

Trīs konteksti ir ļoti bieži. Tie liek vērtībai uzvesties kā skaitlim, virknei vai Būla vērtībai. Katram no tiem ir prefiksa operators, kas tieši uzliek kontekstu:

* `+` — skaitliskais konteksts
* `~` — virknes konteksts
* `?` — Būla konteksts

Ar masīvu `+` dod tā garumu, bet `~` dod tā elementus, savienotus ar atstarpēm. `?` parāda, vai masīvā vispār ir kādi elementi:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Tukšs masīvs dod `0` skaitliskajā kontekstā un `False` Būla kontekstā:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Jums ne vienmēr ir jāraksta šie operatori pašiem. Raku var uzlikt pareizo kontekstu jūsu vietā. Aritmētika ievieto savas vērtības skaitliskajā kontekstā, bet virkņu savienošana tās ievieto virknes kontekstā. `if`, `while` un `and`/`or` ievieto savu nosacījumu Būla kontekstā:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Tātad `if @array { … }` darbojas tieši tā, kā jūs gaidītu. Masīvs, kas nav tukšs, ir patiess. Prefiksa operatori ir veids, kā tieši prasīt tās pašas pārvēršanas.

Kopā ar postfiksa `if` tas ļauj rakstīt īsu un skaidru kodu:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
