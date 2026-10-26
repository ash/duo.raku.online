---
title: Krustojuma, hiper un noliedzošie
translations_gpt:
---

{% include menu.html %}

Bez redukcijas un zip Raku ir vēl vairāki metaoperatori. Trīs no tiem šobrīd ir noderīgi zināt.

## Krusteniskais — `X`

Krusteniskais metaoperators `X` paņem divus sarakstus. Tas sapāro **katru** viena saraksta elementu ar **katru** otra saraksta elementu. To sauc par Dekarta reizinājumu:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Tāpat kā zip, tas var ietvert operatoru, kas tad strādā ar katru pāri. `X~` savieno katru pāri virknē, un `X*` sareizina vērtības:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip iet cauri diviem sarakstiem vienlaikus, bet krusteniskais operators tos apvieno visos iespējamos veidos.

## Hiper — `»…«`

Hiper metaoperators piemēro operatoru **katram elementam** sarakstā. Operators atrodas smailajās iekavās `»…«` vai ASCII formā `>>…<<`. Ar diviem sarakstiem tas strādā pa elementiem, tāpat kā zip. Ja vienā pusē ir tikai viena vērtība, tas izstiepj šo vērtību pār visu sarakstu:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Abām bultiņām nav jārāda vienā virzienā. To virziens nosaka, kas notiek, ja sarakstiem ir dažāds garums. Ja bultiņa rāda **uz** sarakstu, šis saraksts var atkārtoties, lai būtu tikpat garš kā otrs. Šeit ir četras kombinācijas, uzrakstītas ASCII formā ar `<<` un `>>`:

* `>>op<<` — neviens saraksts netiek atkārtots, tāpēc sarakstiem jau jābūt vienāda garuma, citādi rodas kļūda;
* `>>op>>` — **labais** saraksts atkārtojas, lai būtu tikpat garš kā kreisais;
* `<<op<<` — **kreisais** saraksts atkārtojas, lai būtu tikpat garš kā labais;
* `<<op>>` — **īsākais** saraksts atkārtojas, lai būtu tikpat garš kā garākais.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

Ir arī unārā forma, ar tikai vienu operandu. Tā izsauc metodi katram elementam. `>>.uc` pārvērš katru virkni lielajos burtos:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Hiper operācijas arī parāda, ka darbu *var* veikt paralēli. Ar saistīto metodi `.hyper` jūs iepazīsieties vēlāk, [konkurentās programmēšanas sadaļā](/lv/paradigms/hyper-race).

## Negācijas — `!`

Ja ieliekat `!` pirms salīdzināšanas operatora, jūs saņemat pretēju rezultātu. Pazīstamais `!=` (nav vienāds) ir tieši šis metaoperators kopā ar `==`. Tas pats darbojas ar citiem Būla operatoriem, piemēram, `eq` un `%%`:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — not equal as strings
say 5 !%% 2;     # True  — 5 is not divisible by 2
```

Īsi sakot, `$a !op $b` ir vienkārši glītāks veids, kā rakstīt `!($a op $b)`.

Tas ir apzināti. Dažas valodas, piemēram, esperanto, ir apzināti mazas un vienkāršas. Tās cenšas katrai lietai dot vienu regulāru izteikšanas veidu. Raku ir citāda un labprāt dod jums vairākus veidus. Tāpēc negācijas `!eq` pastāv tieši blakus īpašajam operatoram `ne`. Abi nozīmē tieši to pašu:

```raku
say 'a' ne 'b'; # True — the same test as 'a' !eq 'b'
```

{% include nav.html %}
