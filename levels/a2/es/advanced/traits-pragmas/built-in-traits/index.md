---
title: Traits integrados
translations_gpt:
---

{% include menu.html %}

Añades un _trait_ con la palabra clave `is`, justo después de una declaración. Un trait se ejecuta en tiempo de compilación. Cambia una propiedad fija de la cosa que tiene el trait. Raku tiene muchos traits. Ya has usado algunos de ellos.

Normalmente, los parámetros de una subrutina son de **solo lectura**. No puedes asignarles valores nuevos dentro de la rutina. El trait `is copy` te da tu propia copia del argumento. Puedes cambiar esta copia. El cambio se queda dentro de la rutina. La variable del llamador no cambia:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

El trait `is rw` va más allá. Conecta el parámetro con la variable del llamador. Cambias el parámetro dentro de la rutina. Entonces el cambio también se ve fuera:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Sin uno de estos traits, `$n++` da un error. Esto es porque el parámetro es de solo lectura.

Otro trait común establece un valor por defecto:

```raku
my $port is default(8080);
say $port; # 8080
```

Aquí, `is default` da a la variable un valor por defecto. La variable tiene este valor cuando no hay nada más en ella. Hay muchos traits incorporados: `is rw`, `is copy`, `is default` y más. Cada uno añade un comportamiento especial a una declaración. Esto pasa en tiempo de compilación. El siguiente tema muestra que la lista de traits no está cerrada. [Puedes crear tus propios traits](/es/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
