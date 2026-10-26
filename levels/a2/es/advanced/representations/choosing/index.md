---
title: Eligiendo el correcto
---

{% include menu.html %}

Toma escalares simples, como números y cadenas. Aquí, las tres formas se ven iguales. Son diferentes para valores con varias partes. También son diferentes para valores indefinidos. Aquí tienes un `Pair`, mostrado de tres formas:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Aquí tienes una regla simple:

* [`.gist`](../gist) — para salida que las personas *leen* (`say`, `note`).
* [`.Str`](../str) — para salida que es *texto plano* (`print`, `put`, valores dentro de cadenas, el operador `~`).
* [`.raku`](../raku-method) — para una forma *parecida al código*, cuando depuras (`dd`).

Puedes escribir tus propias clases. En una clase, puedes definir tú mismo cada uno de estos métodos. Así tus propios objetos también se imprimen bien. Volvemos a esto en la siguiente parte. Allí, [creamos clases](/es/oop/classes).

{% include nav.html %}
