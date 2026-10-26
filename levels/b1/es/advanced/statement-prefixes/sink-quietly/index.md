---
title: sink y quietly
translations_gpt:
---

{% include menu.html %}

Dos prefijos más sirven para ejecutar código por sus efectos, no por su valor.

El prefijo `sink` ejecuta algo en _contexto sink_, es decir, solo por sus efectos secundarios. El resultado se tira. Esto es útil cuando quieres obligar a una operación perezosa a ejecutarse:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Aquí, el `map` se ejecuta solo por lo que imprime. `sink` se asegura de que de verdad se ejecute, y después tira la lista resultante. Si nada lo obliga, un `map` perezoso podría no ejecutarse en absoluto. Esto puede pasar cuando su resultado nunca se usa.

El prefijo `quietly` ejecuta un bloque con sus **advertencias apagadas**. El código que normalmente imprime una advertencia en el flujo de error se queda en silencio:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Sumar `1` a un `$value` indefinido normalmente da una advertencia sobre un valor no inicializado. Dentro de `quietly`, esta advertencia queda oculta. Úsalo cuando sabes que un código da advertencias y no quieres el ruido. Pero úsalo poco, porque las advertencias normalmente señalan un error real.

{% include nav.html %}
