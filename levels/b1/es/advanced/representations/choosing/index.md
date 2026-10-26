---
title: Eligiendo el correcto
---

{% include menu.html %}

Con escalares comunes, como números y cadenas, las tres representaciones se ven iguales. La diferencia aparece con valores compuestos o indefinidos. Aquí tienes un `Pair`, mostrado de tres formas:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Aquí tienes una regla general aproximada:

* [`.gist`](../gist) — para salida que las personas van a *leer* (`say`, `note`).
* [`.Str`](../str) — para salida de *texto plano* (`print`, `put`, variables dentro de cadenas, el operador `~`).
* [`.raku`](../raku-method) — para una forma *similar a código* cuando depuras (`dd`).

Cuando escribes una clase, puedes dar a cada uno de estos métodos tu propia definición. Así tus propios objetos también se imprimen bien. Volveremos a esto cuando [creemos clases](/es/oop/classes) en la siguiente parte.

{% include nav.html %}
