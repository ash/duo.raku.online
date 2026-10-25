---
title: 'Risinājums: Pirkumu tabula'
---

{% include menu.html %}

Tabulai ir galvene, kuru jūs varat izdrukāt ar vienu pašu `say`. Tālāk ir vairākas rindas ar vienādu struktūru. Katrā rindā ir preces nosaukums, tās cena, daudzums un kopējās izmaksas.

Jūs vēlaties saglabāt rindu secību. Tāpēc masīvs ir laba izvēle precēm. Tad katra tabulas rinda kļūst par vienu masīva elementu.

Otrajā līmenī katru ierakstu var glabāt hešā. Hešam ir daži nosaukti lauki: `name`, `price` un `quantity`.

Pēc tam programmai vajag tikai ciklu pār precēm. Ciklā tā aprēķina kopsummas un izdrukā tabulas rindas.

## Kods

Šeit ir viens iespējamais šī uzdevuma risinājums:

```raku
my @items = [
    {
        name => 'Krēsli',
        price => 20.57,
        quantity => 4,
    },
    {
        name => 'Galdi',
        price => 50.18,
        quantity => 1,
    }
];

say "Prece\tCena\tN\tKopā";
for @items -> $item {
    my $total = $item<price> * $item<quantity>;
    say "$item<name>\t\$$item<price>\t$item<quantity>\t\$$total";
}
```

🦋 Atrodiet programmu failā [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Izvade

```console
$ raku exercises/associatives/purchase-table.raku
Prece	Cena	N	Kopā
Krēsli	$20.57	4	$82.28
Galdi	$50.18	1	$50.18
```

{% include nav.html %}
