---
title: Pares
---

{% include menu.html %}

Un par es una estructura de datos. Guarda un nombre y un valor. Juntos, forman un solo objeto. Puedes guardar este objeto en una variable escalar. Así creas un par:

```raku
my $pair = name => 'Anna';
```

La variable `$pair` tiene el tipo `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Puedes obtener el nombre y el valor por separado. El método `key` da el nombre. El método `value` da el valor:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Los pares tienen una característica importante. Son inmutables. Esto significa que no puedes darle un valor nuevo a un par. Tampoco puedes darle un nombre nuevo. Por supuesto, puedes asignar un par completamente nuevo a la misma variable:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subíndices

Hay otra forma de leer el valor de un par. Puedes indexar el par. Pon el nombre de su clave entre corchetes angulares. Así se hace:

```raku
say $pair<name>;
```

Fíjate en que una clave sin espacios no necesita comillas. Si la clave tiene espacios, las reglas son un poco más estrictas:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Fíjate en que esta vez el código usa llaves.

{% include nav.html %}
