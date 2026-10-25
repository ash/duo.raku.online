---
title: Booleaj operacioj
---

{% include menu.html %}

Vi povas uzi ĉiujn normajn operaciojn kun Booleaj valoroj. Tiuj estas Boolea KAJ, AŬ kaj ekskluziva AŬ (ankaŭ nomata XOR):

```raku
say False && True; # KAJ
say False || True; # AŬ
say False ^^ True; # XOR
```

La programo presas ĉi tiujn rezultojn:

    False
    True
    True

## Negacio

Neado ŝanĝas Boolean valoron al ĝia kontraŭo. Por nei valoron, uzu la prefiksan operaciilon `!`:

```raku
say !False; # True
```

Vi povas konservi Booleajn valorojn en skalaraj variabloj:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
