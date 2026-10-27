---
title: 'Izņēmumu pārtveršana ar `try`'
translations_gpt:
---

{% include menu.html %}

Kad Raku programmā kaut kas noiet greizi, tiek izmests _izņēmums_. Tā notiek, piemēram, kad trūkst faila vai kad jūs paši izsaucat `die`. Pēc noklusējuma izņēmums, ko neviens neapstrādā, aptur programmu. Bloks `try` ļauj izpildīt kodu, kas varētu neizdoties, bez programmas avārijas.

Riskanto kodu jūs ieliekat blokā `try`. Ja tā iekšā tiek izmests izņēmums, bloks apstājas tajā vietā. Bet programma turpina darbu:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

`try` noķer `die`, tāpēc programma neavarē. Tā uzreiz turpina ar nākamo teikumu un izdrukā:

```
Still works
```

Kad bloks šādi neizdodas, tas dod nedefinētu vērtību. Tāpēc `$result` ir nedefinēts:

```raku
say $result.defined; # False
```

Noķertais izņēmums glabājas speciālajā mainīgajā `$!`. Tā paziņojumu var nolasīt no turienes:

```raku
say $!.message; # Boom!
```

Tātad `try` pārvērš liktenīgu kļūdu par kaut ko, ko jūsu programma var pārbaudīt un uz ko reaģēt. Ja bloks izpildās bez neviena izņēmuma, `$result` satur tā vērtību un `$!` ir nedefinēts.

{% include nav.html %}
