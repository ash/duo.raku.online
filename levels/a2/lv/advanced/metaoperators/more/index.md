---
title: Krustojuma, hiper un noliedzošie
translations_gpt:
---

{% include menu.html %}

Raku ir vēl citi metaoperatori, ne tikai redukcija un zip. Šeit jūs iepazīstat trīs no tiem.

## Krusteniskais — `X`

Krusteniskais metaoperators `X` paņem divus sarakstus un veido pārus. Šeit **katrs** viena saraksta elements iet pārī ar **katru** otra saraksta elementu. To sauc par Dekarta reizinājumu:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Tāpat kā zip, arī `X` var paņemt operatoru. Tad operators strādā ar katru pāri. `X~` savieno katru pāri virknē. `X*` sareizina abus skaitļus:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip iet cauri diviem sarakstiem vienlaikus. Krusteniskais operators saliek tos kopā visos iespējamos veidos.

## Hiper — `»…«`

Hiper metaoperators lieto operatoru **katram elementam** sarakstā. Operators stāv starp bultiņām `»…«`. Tikai ar ASCII rakstzīmēm jūs rakstāt `>>…<<`. Ar diviem sarakstiem tas strādā pa elementiem, tāpat kā zip. Dažreiz vienā pusē ir tikai viena vērtība. Tad tas lieto šo vērtību ar katru saraksta elementu:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Abas bultiņas var rādīt dažādos virzienos. Virziens ir svarīgs, ja sarakstiem ir dažāds garums. Ja bultiņa rāda **uz** sarakstu, Raku var atkārtot šo sarakstu. Tad tas ir tikpat garš kā otrs saraksts. Šeit ir četras kombinācijas ASCII formā, ar `<<` un `>>`:

* `>>op<<` — Raku neatkārto nevienu sarakstu. Sarakstiem jābūt vienāda garuma. Ja tā nav, jūs saņemat kļūdu.
* `>>op>>` — Raku atkārto **labo** sarakstu. Tad tas ir tikpat garš kā kreisais.
* `<<op<<` — Raku atkārto **kreiso** sarakstu. Tad tas ir tikpat garš kā labais.
* `<<op>>` — Raku atkārto **īsāko** sarakstu. Tad tas ir tikpat garš kā garākais.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

Ir arī forma ar tikai vienu operandu. Tā izsauc metodi katram elementam. `>>.uc` pārveido katru virkni lielajos burtos:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Hiper operācija pasaka Raku vēl kaut ko. Raku *var* veikt darbu paralēli. Tad vairākas darba daļas notiek vienlaikus. Vēlāk jūs iepazīsiet līdzīgo metodi `.hyper`. Tā ir [sadaļā par konkurento programmēšanu](/lv/paradigms/hyper-race).

## Negācijas — `!`

Ielieciet `!` pirms salīdzināšanas operatora. Tad jūs saņemat pretēju rezultātu. Jūs jau zināt `!=` jeb “nav vienāds”. Tas ir vienkārši šis metaoperators ar `==`. Arī citi operatori dod `True` vai `False`, piemēram, `eq` un `%%`. Metaoperators ar tiem strādā tāpat:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — not equal as strings
say 5 !%% 2;     # True  — 5 is not divisible by 2
```

Tātad `$a !op $b` ir vienkārši tīrāks veids, kā rakstīt `!($a op $b)`.

Raku to dara apzināti. Dažas valodas ir apzināti mazas un vienkāršas, piemēram, esperanto. Esperanto cenšas katru lietu teikt vienā regulārā veidā. Ar Raku ir citādi. Raku labprāt dod jums vairākus veidus. Tāpēc Raku ir negācijas `!eq`. Raku ir arī īpašs operators `ne`. Abi nozīmē tieši to pašu:

```raku
say 'a' ne 'b'; # True — the same test as 'a' !eq 'b'
```

{% include nav.html %}
