---
title: Vērtības un atslēgas
translations_gpt:
---

{% include menu.html %}

Katrai uzskaitījuma konstantei ir gan nosaukums, gan skaitlis. Metode `.value` atgriež skaitli, bet `.key` atgriež nosaukumu kā virkni:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Jums nav obligāti jāizmanto automātiskie numuri no nulles. Lai vērtības izvēlētos pats, rakstiet konstantes kā pārus:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Šeit darba nedēļa sākas ar vienu, nevis ar nulli.

Uzskaitījuma tips pats var arī uzskaitīt visas savas konstantes. Tā metode `.enums` atgriež attēlojumu, kas saista katru nosaukumu ar tā vērtību:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Šīs trīs metodes, `.value`, `.key` un `.enums`, ļauj jums brīvi pārvietoties. Jūs varat iet no konstantes uz tās skaitli un no skaitļa atpakaļ uz datiem. Jūs varat strādāt arī ar visu kopu. Tieši tas padara uzskaitījumus noderīgus tādām lietām kā izvēlnes, stāvokļi un uzmeklēšanas tabulas.

{% include nav.html %}
