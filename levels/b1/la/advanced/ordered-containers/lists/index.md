---
title: Listae
translations_gpt:
---

{% include menu.html %}

Index quoque collectio ordinata valorum est. Sed, non sicut ordo, _immutabilis_ est. Hoc significat te elementa eius mutare, addere, vel removere non posse. Indicem scribis ut valores cum virgulis inter eos, saepe intra parentheses:

```raku
my $colours = ('red', 'green', 'blue');
```

Elementa indicis per indicem suum legere potes, sicut cum ordine. Etiam quaerere potes quot sint:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Differentiam vides cum elementum mutare temptas. Cum ordine hoc operatur, quia quodque elementum continens est:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Cum indice errorem accipis. Elementa indicis solum valores sunt, non continentes:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Secundum programma cum nuntio sistit:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Itaque utere ordine, cum sigillo `@`, ubi contenta eius mutare debes. Utere indice ubi solum seriem fixam valorum servare debes.

{% include nav.html %}
