---
title: '`say`'
---

{% include menu.html %}

Hoc est quod rutina aedificata `say` facit:

1. Vocavit methodum `gist` in argumentis suis.
1. Addit novam lineam characterem.
1. Convertit eventum ad UTF-8.
1. Mittit ad `STDOUT` rivum.

Usori res simplex videtur. `say` solum contenta variabilis ad terminalem imprimit et novam lineam addit.

Primus gradus aliquam explicationem requirit. Omne genus aedificatum datorum, ut integri vel chordae, methodum `gist` habet. Pro talibus generibus simplicibus, valorem reddit qui rem repraesentat. Homines hunc valorem facile legere possunt.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Ordines et tabulae sunt exempla datorum magis complexorum. Pro eis, methodus `gist` aliquam formam addit.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Potes `say` et ut functionem et ut methodum vocare:

```raku
say 42;
say(42);
42.say;
```

Plura argumenta ad `say` dare potes. Partes output sine ullis spatiis inter eas iungit.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
