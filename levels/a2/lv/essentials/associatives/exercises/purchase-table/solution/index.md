---
title: 'Risinājums: Pirkumu tabula'
---

{% include menu.html %}

Tabulai ir galvene. Jūs to varat izdrukāt ar vienu pašu `say`. Pēc galvenes ir dažas rindas. Visām rindām ir tās pašas daļas. Katrā rindā ir preces nosaukums un tās cena. Tajā ir arī preču skaits un to kopējā cena.

Rindu secībai jāpaliek tādai pašai. Tāpēc masīvs ir laba vieta precēm. Katra tabulas rinda ir viens masīva elements.

Otrajā līmenī katra prece ir ieraksts. Jūs to varat glabāt hešā. Hešam ir daži lauki ar nosaukumiem: `name`, `price` un `quantity`.

Pārējā programmas daļa ir cikls pār precēm. Katrai precei cikls aprēķina kopsummu. Tad tas izdrukā tabulas rindu.

## Kods

Šeit ir viens veids, kā atrisināt uzdevumu:

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
