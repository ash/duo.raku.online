---
title: 'Risinājums: Kaste ar izmēru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
role Sized {
    method describe {
        'size is ' ~ self.size;
    }
}

class Box does Sized {
    has $.size;
}

my $b = Box.new(size => 10);
say $b.describe;
say $b ~~ Sized;
```

🦋 Atrodiet programmu failā [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Izvade

```
size is 10
True
```

## Komentāri

1. Loma dod metodi `describe`. Klase komponē lomu ar `does Sized`. Tas nozīmē, ka tā ņem lomu sevī. Metodei vajag `self.size`. Klase `Box` dod `size`. Loma un klase der kopā. Kopā tās veido pilnu objektu.

1. `Box` dara lomu. Tāpēc gudrā sakritība `$b ~~ Sized` ir `True`. Objektam ir katra loma, ko komponē tā klase. Raku to zina. Tas ir noderīgi. Jūs varat pārbaudīt, ko objekts prot. Dariet to, pirms izsaucat lomas metodi.

{% include nav.html %}
