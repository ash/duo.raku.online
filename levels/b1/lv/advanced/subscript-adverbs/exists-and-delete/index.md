---
title: Exists un delete
translations_gpt:
---

{% include menu.html %}

Apstākļvārds `:exists` pārvērš indeksu par jautājumu. Vai pie šīs atslēgas vai indeksa ir vērtība? Apstākļvārds atgriež Būla vērtību, bet tas nepaņem pašu vērtību:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Šis ir pareizais veids, kā pārbaudīt atslēgu. Ja jūs vienkārši nolasāt `%h<plum>`, jūs saņemat nedefinētu vērtību. Atkarībā no datiem tas var noslēpt atšķirību starp «nav» un «ir, bet nedefinēta».

Apstākļvārds `:delete` noņem ierakstu un atdod jums tā vērtību:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

Ieraksta `apple` vairs nav. Jūs saņemat atpakaļ dzēsto vērtību `1`, tāpēc jūs varat to izmantot.

Abi apstākļvārdi darbojas arī ar masīviem, pēc indeksa:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Kā izskatās masīvs pēc tam, kad elements no vidus ir noņemts? Lūk, atbilde:

```raku
say @a; # [10 (Any) 30]
```

Tātad viens vienots pieraksts ļauj pārbaudīt un mainīt konteinerus uz vietas. Šim nolūkam jums nav vajadzīgas atsevišķas metodes.

{% include nav.html %}
