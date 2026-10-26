---
title: Vērtības un atslēgas
translations_gpt:
---

{% include menu.html %}

Katrai uzskaitījuma konstantei ir nosaukums un skaitlis. Metode `.value` dod skaitli. Metode `.key` dod nosaukumu kā virkni:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Raku numurē konstantes no nulles. Bet jūs varat to mainīt. Rakstiet konstantes kā pārus. Tad jūs pats izvēlaties vērtības:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Šeit darba nedēļa sākas no viena, nevis no nulles.

Uzskaitījuma tips var arī uzskaitīt visas savas konstantes. Metode `.enums` atgriež attēlojumu. Attēlojums ir līdzīgs hešam. Šajā attēlojumā katram nosaukumam ir sava vērtība:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Ar `.value`, `.key` un `.enums` jūs varat brīvi pārvietoties. Jūs varat iet no konstantes uz tās skaitli. Jūs varat iet no skaitļa atpakaļ uz datiem. Un jūs varat iet pāri visai kopai. Tāpēc uzskaitījumi ir noderīgi, piemēram, izvēlnēm, stāvokļiem un uzmeklēšanas tabulām.

{% include nav.html %}
