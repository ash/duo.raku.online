---
title: 'Capturar excepciones con `try`'
translations_gpt:
---

{% include menu.html %}

Cuando algo sale mal en un programa de Raku, se lanza una _excepción_. Esto pasa, por ejemplo, cuando falta un archivo o cuando tú mismo llamas a `die`. Por defecto, una excepción que nadie maneja detiene el programa. El bloque `try` te permite ejecutar código que podría fallar, sin que el programa se caiga.

Pones el código arriesgado dentro de un bloque `try`. Si se lanza una excepción dentro de él, el bloque se detiene en ese punto. Pero el programa continúa:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

El `try` captura el `die`, así que el programa no se cae. Pasa directamente a la instrucción siguiente e imprime:

```
Still works
```

Cuando el bloque falla así, da un valor no definido. Así que `$result` no está definido:

```raku
say $result.defined; # False
```

La excepción capturada se guarda en la variable especial `$!`. Desde ahí puedes leer su mensaje:

```raku
say $!.message; # Boom!
```

Así que `try` convierte un error fatal en algo que tu programa puede comprobar y a lo que puede reaccionar. Si el bloque se ejecuta sin ninguna excepción, `$result` contiene su valor y `$!` no está definida.

{% include nav.html %}
