---
title: Bolsas y mezclas
---

{% include menu.html %}

Un set solo te dice _si_ un valor está en él. Pero a veces también necesitas saber _cuántas veces_ está ese valor. Para esto existe el `Bag`, que guarda un conteo para cada valor.

Creas un bag con la rutina `bag`. Los valores repetidos no se convierten en un solo valor. En su lugar, se cuentan:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Puedes preguntar al bag por un valor con el subíndice `< >`. Entonces obtienes el número de veces que se puso ese valor. El método `total` da la suma de todos los conteos:

```raku
say bag(<a b a c a>).total; # 5
```

Un `Mix` es la misma idea que un bag. La diferencia es que los conteos, llamados _pesos_, pueden ser fracciones, no solo números enteros. Para dar los pesos tú mismo, empareja cada valor con su peso. Luego convierte la lista en un mix con `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Consultas un peso con `< >` y sumas los pesos con `total`. Los dos funcionan exactamente igual que en un bag. La única diferencia es que los números no tienen que ser enteros. Aquí, `total` suma los pesos `2.5` y `0.75`, lo que da `3.25`. Es la suma de los pesos, no el número de valores. Los bags y los mixes son útiles siempre que necesites llevar la cuenta de cantidades. Por ejemplo, puedes contar cuántas veces aparece cada palabra en un texto. O puedes dar pesos a opciones.

{% include nav.html %}
