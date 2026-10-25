---
title: Uso de `unless`
---

{% include menu.html %}

Con el [operador `!`](/es/essentials/booleans/operations#negation), puedes convertir fácilmente cualquier condición booleana en su contrario. Pero a veces el `!` extra hace que la expresión sea más pesada y más difícil de leer. En esos casos, `unless` puede ser tu amigo.

Raku ejecuta el bloque `unless` cuando su condición es `False`.

```raku
my $broken = False;

# ...Algo puede establecer $broken a True aquí...
    
unless $broken {
    say "¡No te preocupes!";
    say "¡Sé feliz!";
}
```

Compara dos versiones del mismo programa:

Con `if` y negación:

```raku
if !$broken { . . . }
```

Con `unless`:

```raku
unless $broken { . . . }
```

Tienes las dos opciones, así que siempre puedes elegir lo que te parezca mejor en cada situación.

Nota que no puedes poner un bloque `else` o `elsif` después de `unless`. Si necesitas uno, la única manera es usar `if`.

{% include nav.html %}
