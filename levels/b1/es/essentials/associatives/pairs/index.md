---
title: Pares
---

{% include menu.html %}

Un par es una estructura de datos que guarda juntos un nombre y un valor. Forman un único objeto, que puedes guardar en una variable escalar. Así es como creas un par:

```raku
my $pair = name => 'Anna';
```

El tipo de la variable `$pair` es `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Puedes obtener el nombre y el valor por separado con los métodos `key` y `value`:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Una característica importante de los pares es que son inmutables. Esto significa que no puedes darle a un par existente un valor nuevo ni un nombre nuevo. Pero, por supuesto, puedes asignar un par completamente nuevo a la misma variable:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subíndices

Hay otra forma de leer el valor de un par. Puedes indexarlo con el nombre de su clave entre corchetes angulares. Así es como se hace:

```raku
say $pair<name>;
```

Fíjate en que no necesitas comillas alrededor de la clave si no tiene espacios. Si tiene espacios, las reglas son un poco más estrictas:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Presta atención: esta vez usamos llaves.

{% include nav.html %}
