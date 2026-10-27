---
title: 'Izņēmumu pārtveršana ar `try`'
translations_gpt:
---

{% include menu.html %}

Dažreiz Raku programmā kaut kas noiet greizi. Piemēram, trūkst faila vai kods izsauc `die`. Tad programma izmet kļūdu. Šādu kļūdu sauc par _izņēmumu_. Ja neviens kods neapstrādā izņēmumu, programma apstājas. Tā notiek pēc noklusējuma. Te palīdz bloks `try`. Tas ir koda bloks ar vārdu `try` priekšā. Kods šajā blokā var neizdoties. Bet programma neavarē.

Kodu, kas var neizdoties, jūs ieliekat blokā `try`. Varbūt kods bloka iekšā izmet izņēmumu. Tad bloks apstājas tajā vietā. Bet programma turpina darbu:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

`try` noķer `die`. Tāpēc programma neavarē. Tā iet tieši uz nākamo teikumu. Tā izdrukā:

```
Still works
```

Šeit bloks neizdodas. Tad tas dod nedefinētu vērtību. Tāpēc `$result` ir nedefinēts:

```raku
say $result.defined; # False
```

Raku glabā noķerto izņēmumu speciālajā mainīgajā `$!`. No turienes jūs varat nolasīt izņēmuma paziņojumu:

```raku
say $!.message; # Boom!
```

Tātad `try` palīdz ar liktenīgu kļūdu. Bez `try` tāda kļūda aptur programmu. Ar `try` jūsu programma var apskatīt kļūdu. Tad tā var uz to reaģēt. Un ja bloks izpildās bez izņēmuma? Tad `$result` satur bloka vērtību. Šajā gadījumā `$!` ir nedefinēts.

{% include nav.html %}
