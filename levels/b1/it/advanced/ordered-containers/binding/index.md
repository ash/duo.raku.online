---
title: Binding con `:=`
translations_gpt:
---

{% include menu.html %}

Finora, ogni variabile che hai creato ha avuto un nuovo contenitore. L'assegnazione con `=` ha messo un valore _dentro_ quel contenitore. Il binding, scritto come `:=`, è diverso. Collega un nome a un contenitore _esistente_ invece di crearne uno nuovo.

Dopo il binding, i due nomi condividono lo stesso contenitore. Così una modifica fatta con un nome è visibile anche con l'altro:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Qui `$y := $x` non copia il valore `10`. Invece `$y` diventa un altro nome per lo stesso identico contenitore di `$x`. Poi, quando `$x` riceve il valore `20`, anche `$y` dà `20`.

Ora confrontalo con la normale assegnazione. Questa copia il valore in un contenitore separato:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Il binding funziona anche con gli array. Questo codice fa di `@alias` un altro nome per `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Ancora un dettaglio. Se fai il binding di un nome direttamente a un valore letterale, dietro di esso non c'è nessun contenitore. Così il nome diventa di sola lettura:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
