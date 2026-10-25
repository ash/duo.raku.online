---
title: '`say`'
---

{% include menu.html %}

Rutina aedificata `say` quattuor res facit:

1. Vocavit methodum `gist` in argumentis suis.
1. Addit novam lineam characterem.
1. Convertit eventum ad UTF-8.
1. Mittit ad `STDOUT` rivum.

Usori res simplex est. `say` valorem variabilis in terminali imprimit. Deinde novam lineam addit.

Primus gradus aliquam explicationem requirit. Omne genus aedificatum datorum methodum `gist` habet. Integri et chordae sunt exempla talium generum. Pro his generibus simplicibus, `gist` rem ut valorem facile legibilem reddit.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Quaedam data magis complexa sunt, exempli gratia ordines vel tabulae. Pro talibus datis, `gist` aliquam formam addit.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Potes `say` ut functionem vocare. Etiam eam ut methodum vocare potes:

```raku
say 42;
say(42);
42.say;
```

Plus quam unum argumentum ad `say` dare potes. Partes output iungit. Nulla spatia inter eas sunt.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
