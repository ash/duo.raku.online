---
title: sink y quietly
translations_gpt:
---

{% include menu.html %}

Hay dos prefijos más. Ejecutan código por lo que hace. El valor del código no importa.

El prefijo `sink` ejecuta código en _contexto sink_. El código se ejecuta solo por sus efectos secundarios. Raku tira el resultado. Esto es útil con una operación perezosa. Con `sink`, haces que se ejecute:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Aquí, ejecutamos el `map` solo para imprimir. `sink` se asegura de que de verdad se ejecute. Después `sink` tira la lista que da el `map`. Si nada lo obliga, un `map` perezoso puede no ejecutarse nunca. Esto puede pasar cuando nadie usa su resultado.

El prefijo `quietly` ejecuta un bloque y **oculta sus advertencias**. Algún código normalmente imprime una advertencia en el flujo de error. Dentro de `quietly`, este código se queda en silencio:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Normalmente, Raku muestra una advertencia cuando sumas `1` a un `$value` indefinido. La advertencia habla de un «valor no inicializado». Dentro de `quietly`, esta advertencia queda oculta. A veces sabes que tu código da una advertencia. No quieres este ruido. Entonces usa `quietly`. Pero no lo uses a menudo. Una advertencia normalmente muestra un error real.

{% include nav.html %}
