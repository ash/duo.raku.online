---
title: Uso de `unless`
---

{% include menu.html %}

El [operador `!`](/es/essentials/booleans/operations#negation) convierte fácilmente cualquier condición booleana en su contrario. Pero a veces este `!` hace la expresión más compleja. Entonces es más difícil de leer. En esos casos, `unless` puede ayudar.

La condición de `unless` debe ser `False`. Entonces Raku ejecuta el bloque.

```raku
my $broken = False;

# ...Algo puede establecer $broken a True aquí...
    
unless $broken {
    say "¡No te preocupes!";
    say "¡Sé feliz!";
}
```

Aquí tienes dos versiones del mismo programa. Compáralas:

Con `if` y `!`:

```raku
if !$broken { . . . }
```

Con `unless`:

```raku
unless $broken { . . . }
```

Así que puedes elegir. En cada situación, elige lo que te parezca mejor.

No puedes poner un bloque `else` o `elsif` después de `unless`. Para esto, debes usar `if`.

{% include nav.html %}
