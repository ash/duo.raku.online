---
title: Traits integrados
translations_gpt:
---

{% include menu.html %}

Un _trait_ se añade con la palabra clave `is` justo después de una declaración. Se ejecuta en tiempo de compilación. Cambia una propiedad fija del elemento al que pertenece. Raku trae muchos traits, y ya has usado algunos.

Por defecto, los parámetros de una subrutina son de **solo lectura**. No puedes asignarles valores dentro de la rutina. El trait `is copy` te da una copia privada del argumento que puedes cambiar. El cambio no afecta al llamador:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

El trait `is rw` va más allá. Vincula el parámetro a la variable del llamador. Así, un cambio dentro de la rutina también es visible fuera:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Sin uno de estos traits, `$n++` causaría un error. El parámetro sería de solo lectura.

Otro trait común establece un valor por defecto:

```raku
my $port is default(8080);
say $port; # 8080
```

Aquí, `is default` da a la variable un valor para usar cuando no hay otro valor. Hay muchos traits incorporados, como `is rw`, `is copy` y `is default`. Cada uno añade un comportamiento concreto a una declaración en tiempo de compilación. El siguiente tema muestra que el conjunto de traits no está cerrado. [Puedes definir los tuyos propios](/es/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
