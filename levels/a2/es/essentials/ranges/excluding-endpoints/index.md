---
title: Excluir extremos
---

{% include menu.html %}

Puedes quitar un extremo del rango, o los dos extremos. Para esto, añade el carácter `^` al operador de rango. Así obtienes tres operadores más. Los comentarios muestran los números que da cada rango.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

Los casos de arriba son simples. En estos casos, puedes quitar los espacios alrededor del operador de rango:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Algunos rangos empiezan con 0, por ejemplo, `0..^5`. Hay una forma corta de escribir este rango: `^5`.

{% include nav.html %}
