---
title: Booleaj operacioj
---

{% include menu.html %}

Vi povas fari ĉiujn kutimajn operaciojn kun Booleaj valoroj. Ili estas Boolea KAJ, AŬ kaj ekskluziva AŬ. Ekskluziva AŬ ankaŭ nomiĝas XOR:

```raku
say False && True; # KAJ
say False || True; # AŬ
say False ^^ True; # XOR
```

La programo presas ĉi tion:

    False
    True
    True

## Negacio

Neado donas la kontraŭan Boolean valoron. Por neado, uzu la prefiksan operaciilon `!`. Prefiksa operaciilo staras antaŭ la valoro:

```raku
say !False; # True
```

Skalara variablo povas teni Boolean valoron:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
