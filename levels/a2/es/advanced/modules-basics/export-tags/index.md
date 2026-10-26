---
title: Etiquetas de exportación
translations_gpt:
---

{% include menu.html %}

Marca una subrutina con `is export`. Entonces va al grupo de exportación _predeterminado_ del módulo. Un simple `use` trae los nombres de este grupo. También puedes darle a `is export` una _etiqueta_. Con las etiquetas, pones las exportaciones en grupos con nombre. Así cada programa toma el grupo que quiere.

Escribes una etiqueta entre paréntesis después de `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` no tiene etiqueta. Así que está en el grupo predeterminado. `goodbye` tiene la etiqueta `:partings`.

Un simple `use` importa solo el grupo predeterminado:

```raku
use Greeting;      # hello is available; goodbye is not
```

Ahora nombra una etiqueta. Entonces `use` importa ese grupo en su lugar. Esto puede sorprenderte. Pero _no_ importa también el grupo predeterminado:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

Con `:partings`, obtienes exactamente este grupo. ¿Quieres todas las exportaciones de un módulo? Entonces usa la etiqueta incorporada `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

Es bueno conocer dos etiquetas especiales. Todos los módulos aceptan `:ALL`. Importa todas las exportaciones del módulo. Puedes poner `:MANDATORY` en una rutina. Entonces Raku siempre importa la rutina. Da igual qué etiqueta elige el llamador.

En realidad, cada etiqueta es un paquete. Está dentro del paquete `EXPORT` del módulo. Un ejemplo es `Greeting::EXPORT::partings`. La [introspección de módulos](/es/advanced/module-introspection) lista justo estos paquetes. Con etiquetas, un módulo grande puede mantener pequeño su grupo predeterminado. Aun así, un programa puede pedir más características.

{% include nav.html %}
