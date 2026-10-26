---
title: Listae
translations_gpt:
---

{% include menu.html %}

Index quoque collectio ordinata valorum est. Sed non est sicut ordo. Index _immutabilis_ est. Elementa eius mutare non potes. Neque elementa addere vel removere potes. Ut indicem scribas, virgulas inter valores pone. Saepe parentheses circum eos sunt:

```raku
my $colours = ('red', 'green', 'blue');
```

Elementa indicis per indicem suum legere potes. Etiam numerum elementorum quaerere potes. Idem est ac cum ordine:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Nunc elementum mutare tempta. Hic differentiam vides. Cum ordine operatur. Quodque elementum ordinis continens est:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Cum indice errorem accipis. Elementa indicis solum valores sunt. Continentes non sunt:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Secundum programma sistit. Hunc nuntium imprimit:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Itaque, data mutare debes? Tum ordine utere, cum sigillo `@`. Solum aliquot valores in ordine fixo servare debes? Tum indice utere.

{% include nav.html %}
