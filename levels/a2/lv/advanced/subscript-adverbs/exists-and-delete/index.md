---
title: Exists un delete
translations_gpt:
---

{% include menu.html %}

Apstākļvārds `:exists` pārvērš indeksu par jautājumu. Vai pie šīs atslēgas vai indeksa ir vērtība? Atbilde ir `True` vai `False`. Apstākļvārds nepaņem vērtību:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Šis ir pareizais veids, kā pārbaudīt atslēgu. Jūs varat arī vienkārši nolasīt `%h<plum>`. Bet tad jūs saņemat nedefinētu vērtību. Vai arī ar dažiem datiem jūs neredzat atšķirību. Vai atslēgas «nav»? Vai arī tā «ir, bet nedefinēta»?

Apstākļvārds `:delete` noņem ierakstu. Tas atgriež ieraksta vērtību:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

Ieraksta `apple` vairs nav. Jūs saņemat atpakaļ tā vērtību `1`. Jūs varat izmantot šo vērtību.

Abi apstākļvārdi darbojas arī ar masīviem. Tur jūs izmantojat indeksu:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Jūs noņemat elementu no vidus. Kā tad izskatās masīvs? Lūk, atbilde:

```raku
say @a; # [10 (Any) 30]
```

Tātad jūs izmantojat vienu pierakstu, un tas vienmēr darbojas vienādi. Ar to jūs varat jautāt par konteineru. Jūs varat arī mainīt konteineru uz vietas. Šim nolūkam jums nav vajadzīgas atsevišķas metodes.

{% include nav.html %}
