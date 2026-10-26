---
title: '`WHO` un `HOW`'
translations_gpt:
---

{% include menu.html %}

Vēl divi introspekcijas rīki ir `HOW` un `WHO`. Tie papildina kopu.

## `HOW`

Aiz katras vērtības Raku valodā ir _metaobjekts_. Metaobjekts ir objekts. Tas zina, kā darbojas vērtības tips. `HOW` ir saīsinājums no _Higher Order Workings_. Tas atgriež metaobjektu:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Jūs jau izmantojat metaobjektu. Varbūt jūs to nepamanījāt. `.^` izsaukumā `.^name` ir metodes izsaukums. Šis izsaukums iet caur `HOW`. Šīs divas rindas dara vienu un to pašu:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Tātad `$x.^name` ir tikai īss veids, kā uzrakstīt `$x.HOW.name($x)`. Ievērojiet, ka objekts vēlreiz nonāk iekšā kā arguments. Kāpēc? Visām tipa vērtībām ir *kopīgs* viens metaobjekts. Metaobjekta metodes ir metametodes. Metametodei jāzina, par kuru objektu jūs jautājat. Forma `.^` padod objektu jūsu vietā. Metodei `name` Raku šo argumentu neizmanto. Bet pareizais, vispārīgais veids ir to padot. Dažas metametodes to tiešām izmanto.

Tas attiecas arī uz citām metametodēm. Viens piemērs ir `.^methods`. Tā dod metožu sarakstu. Šīs metodes jūs varat izsaukt uz vērtības.

## `WHO`

`WHO` atgriež nosaukuma _pakotni_. Tā ir nosaukumu jeb simbolu tabula šajā vārdtelpā:

```raku
say Int.WHO.^name; # Stash
```

`Stash` ir hešs simbolu tabulai. Tas ir noderīgs darbā ar moduļiem. Ar to jūs varat atrast moduļa nosaukumus. Mēs pie tā atgriezīsimies [sadaļā par moduļiem](/lv/advanced/module-introspection). Pagaidām tikai atcerieties, ka `WHO` pastāv. Atcerieties arī, ko tas jums dod.

{% include nav.html %}
