---
title: Bolsas y mezclas
---

{% include menu.html %}

Un set solo recuerda _si_ un valor está en él. A veces también quieres saber _cuántas veces_ está. Para esto existe el `Bag`. Guarda un conteo para cada valor.

Para crear un bag, usa la rutina `bag`. Un bag no junta los valores repetidos en uno. Los cuenta:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Pregunta al bag por un valor con el subíndice `< >`. Obtienes el número de veces que este valor entró en el bag. El método `total` suma todos los conteos:

```raku
say bag(<a b a c a>).total; # 5
```

Un `Mix` es como un bag. Pero en un mix, los conteos se llaman _pesos_. Un peso no tiene que ser un número entero. También puede ser una fracción. Puedes dar los pesos tú mismo. Une cada valor con su peso. Luego convierte la lista en un mix con `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Obtienes un peso con `< >`. Sumas los pesos con `total`. Los dos funcionan igual que en un bag. Solo que los números no tienen que ser enteros. Aquí, `total` suma los pesos `2.5` y `0.75`. El resultado es `3.25`. Así que `total` da la suma de los pesos. No cuenta los valores. Los bags y los mixes son útiles cuando necesitas contar cantidades. Por ejemplo, un bag puede contar las palabras de un texto. Te dice cuántas veces aparece cada palabra. Un mix puede dar pesos a opciones.

{% include nav.html %}
