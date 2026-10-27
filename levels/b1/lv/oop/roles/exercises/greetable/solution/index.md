---
title: 'Risinājums: Kaste ar izmēru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Loma nodrošina metodi `describe`, un klase to komponē ar `does Sized`. Metodei vajag `self.size`, ko dod klase `Box`. Tātad loma un klase der kopā un veido pilnu objektu.

1. `Box` dara lomu, tāpēc gudrā sakritība `$b ~~ Sized` ir `True`. Objekts skaitās tāds, kam ir katra loma, ko komponē tā klase. Tas palīdz jums pārbaudīt, ko objekts prot, pirms jūs izsaucat lomas metodi.

{% include nav.html %}
