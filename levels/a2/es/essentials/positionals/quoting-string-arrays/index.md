---
title: Citar arrays de cadenas
---

{% include menu.html %}

A veces los elementos de un arreglo son cadenas cortas sin espacios. Raku tiene una forma bonita de dar valores a un arreglo así.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Puedes poner espacios extra alrededor de los corchetes angulares. O puedes escribirlos sin espacios. Tú decides. El compilador acepta las dos formas.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Las dos formas dan el mismo resultado que esta versión simple:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Arreglo o Lista

Fíjate en una cosa de los ejemplos de arriba. La cita `< . . . >` crea una `List`. No crea un `Array`. Puedes comprobarlo con el método `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Pero puedes asignarla a un arreglo. Entonces obtienes un arreglo con los elementos de la lista.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
