---
title: Excluir extremos
---

{% include menu.html %}

Puedes excluir un extremo de un rango, o los dos. Para hacerlo, añade el carácter `^` al operador de rango. De esta manera, puedes construir tres operadores más. Los comentarios enumeran los números que genera cada rango.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

En casos simples como estos, puedes omitir los espacios alrededor del operador:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Para un rango que empieza con 0, como `0..^5`, hay una forma corta: `^5`.

{% include nav.html %}
