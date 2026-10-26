---
title: 'Risinājums: Heredoc'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Programmas pirmkodu var atrast failā [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Izvade

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Komentāri

1. Heredoc sākas ar `qq:to`, nevis `q:to`, tāpēc tas interpolē. Tāpat kā `qq` virkne, tas ievieto skalāru `$name`, `$count` un `$item` vērtības. Tas *arī* izpilda kodu teksta iekšienē: bloks `{$count * $price}` aprēķina `3 * 25`. Tāpēc kopsumma, `75`, parādās tieši tekstā.

1. Dubultpēdiņas ap `"$item"` šeit ir tikai parastas rakstzīmes. Heredoc iekšienē nav norobežotāja, ko vajadzētu aizbēgt. Tāpēc pēdiņas tiek izdrukātas tā, kā uzrakstītas, bet `$item` joprojām tiek interpolēts.

1. Pamattekstam un aizverošajam `END` ir vienāda četru atstarpju atkāpe. Terminatora atkāpe tiek noņemta no katras rindas. Tāpēc šīs četras atstarpes nekad nenonāk virknē. Izvade sākas pie kreisās malas.

1. Heredoc jau beidzas ar jaunrindu. Tāpēc kods izmanto `print`, nevis `say`. Ar `say` jūs iegūtu otru jaunrindu un lieku tukšu rindu.

{% include nav.html %}
