---
title: Skaitliskais, virkņu un Būla konteksts
---

{% include menu.html %}

Trīs konteksti ir ļoti bieži. Pirmajā vērtība darbojas kā skaitlis. Otrajā tā darbojas kā virkne. Trešajā tā darbojas kā `True` vai `False`. Katram no šiem kontekstiem ir prefiksa operators. Operators stāv pirms vērtības. Tas uzliek kontekstu tieši:

* `+` — skaitliskais konteksts: vērtība darbojas kā skaitlis
* `~` — virknes konteksts: vērtība darbojas kā virkne
* `?` — Būla konteksts: vērtība darbojas kā `True` vai `False`

Izmantojiet tos ar masīvu. `+` dod masīva garumu. `~` dod tā elementus ar atstarpēm starp tiem. `?` pasaka, vai masīvā ir kādi elementi:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Tukšs masīvs skaitliskajā kontekstā ir `0`. Būla kontekstā tas ir `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Jums ne vienmēr ir jāraksta šie operatori. Bieži Raku jūsu vietā uzliek pareizo kontekstu. Aritmētika ievieto vērtības skaitliskajā kontekstā. Virkņu savienošana ievieto tās virknes kontekstā. Un `if`, `while`, `and` un `or` ievieto savu nosacījumu Būla kontekstā:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Tātad `if @array { … }` darbojas tā, kā jūs gaidāt. Masīvs ar elementiem ir patiess. Ar prefiksa operatoriem jūs paši prasāt tās pašas pārvēršanas.

Jūs varat likt `if` arī aiz izteikuma. Tad kods ir īss un skaidrs:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
