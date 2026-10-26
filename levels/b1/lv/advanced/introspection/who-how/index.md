---
title: '`WHO` un `HOW`'
translations_gpt:
---

{% include menu.html %}

Pēdējie divi introspekcijas rīki šajā kopā ir `HOW` un `WHO`.

## `HOW`

Aiz katras vērtības Raku valodā ir _metaobjekts_. Tas ir objekts, kas zina, kā darbojas vērtības tips. `HOW`, kas ir saīsinājums no _Higher Order Workings_, atgriež šo metaobjektu:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Patiesībā jūs visu laiku esat izmantojuši metaobjektu, varbūt to nepamanot. `.^` izsaukumā `.^name` ir metodes izsaukums, kas iet caur `HOW`. Šīs divas rindas dara vienu un to pašu:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Tātad `$x.^name` ir tikai īsāks veids, kā uzrakstīt `$x.HOW.name($x)`. Ievērojiet, ka objekts tiek padots vēlreiz kā arguments. Tas ir tāpēc, ka visām tipa vērtībām ir *kopīgs* viens un tas pats metaobjekts. Tāpēc metametodei ir jāpasaka, par kuru objektu jūs jautājat. Forma `.^` to dara jūsu vietā automātiski. Metodes `name` gadījumā arguments patiesībā tiek ignorēts. Bet tā padošana ir pareizā, vispārīgā forma, jo dažas metametodes to tiešām izmanto.

Tas pats attiecas uz citām metametodēm, ko jūs varat sastapt, piemēram, `.^methods`. Tā uzskaita metodes, kuras jūs varat izsaukt uz vērtības.

## `WHO`

`WHO` atgriež _pakotni_, kurai pieder nosaukums. Tā ir to simbolu tabula, kas ir definēti šajā vārdtelpā:

```raku
say Int.WHO.^name; # Stash
```

`Stash` ir hešs, kas satur simbolu tabulu. Tas kļūst noderīgs, kad jūs strādājat ar moduļiem. Tad tas ļauj atrast nosaukumus, ko modulis definē. Mēs pie tā atgriezīsimies [sadaļā par moduļiem](/lv/advanced/module-introspection). Pagaidām pietiek zināt, ka `WHO` pastāv un ko tas atgriež.

{% include nav.html %}
