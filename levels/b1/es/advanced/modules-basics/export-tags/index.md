---
title: Etiquetas de exportación
translations_gpt:
---

{% include menu.html %}

Marcar una subrutina con `is export` la pone en el grupo de exportación _predeterminado_ del módulo. Estos son los nombres que trae un simple `use`. También puedes darle a `is export` una _etiqueta_. Las etiquetas ordenan las exportaciones en grupos con nombre. Así cada programa puede elegir el grupo que quiere.

Una etiqueta se escribe entre paréntesis después de `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` no tiene etiqueta, así que pertenece al grupo predeterminado. `goodbye` tiene la etiqueta `:partings`.

Un simple `use` importa solo el grupo predeterminado:

```raku
use Greeting;      # hello is available; goodbye is not
```

Si nombras una etiqueta, `use` importa ese grupo en su lugar. Quizás te sorprenda, pero _no_ importa también el grupo predeterminado:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

Cuando pides `:partings`, obtienes exactamente ese grupo. Para importar todo lo que exporta un módulo, usa la etiqueta incorporada `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

Hay dos etiquetas especiales que conviene conocer. Todos los módulos aceptan `:ALL`, que importa todas sus exportaciones. Puedes poner `:MANDATORY` en una rutina que siempre debe importarse. Da igual qué etiqueta elija el llamador.

Cada etiqueta es en realidad un paquete dentro del paquete `EXPORT` del módulo, por ejemplo `Greeting::EXPORT::partings`. Esto es justo lo que lista la [introspección de módulos](/es/advanced/module-introspection). Con etiquetas, un módulo grande puede mantener pequeño su conjunto predeterminado de exportaciones. Aun así, puede ofrecer características extra cuando un programa las pide.

{% include nav.html %}
