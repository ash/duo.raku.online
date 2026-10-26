---
title: Binding con `:=`
translations_gpt:
---

{% include menu.html %}

Finora, ogni nuova variabile ha creato un nuovo contenitore. L'assegnazione con `=` ha messo un valore _dentro_ questo contenitore. Il binding è diverso. Lo scrivi con `:=`. Il binding non crea un nuovo contenitore. Dà un nome a un contenitore _esistente_.

Dopo il binding, i due nomi condividono un contenitore. Cambia il valore con un nome. Anche l'altro nome vede il cambiamento:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Qui `$y := $x` non copia il valore `10`. Rende `$y` un secondo nome per il contenitore di `$x`. È lo stesso contenitore. Poi `$x` riceve il valore `20`. Allora anche `$y` è `20`.

Confronta questo con la normale assegnazione. Copia il valore in un altro contenitore:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Il binding funziona anche con gli array. Qui `@alias` diventa un secondo nome per `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Ancora un dettaglio. Puoi legare un nome direttamente a un valore letterale. È un valore che scrivi nel codice. Allora dietro il nome non c'è nessun contenitore. Così il nome è di sola lettura. Non puoi assegnargli niente:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
