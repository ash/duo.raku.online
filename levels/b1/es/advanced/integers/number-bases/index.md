---
title: Bases numéricas
---

{% include menu.html %}

En tu código, no tienes que escribir los enteros en el sistema decimal. Raku entiende directamente las otras tres bases más comunes. Cada una tiene su propio prefijo:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binario (base 2)
say 0o17;   # 15   — octal (base 8)
```

Uses la base que uses en el código, el valor es el mismo entero. Solo cambia la forma en que lo escribes.

Para todas las demás bases, existe la forma de raíz `:base<número>`:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Para hacer lo contrario, llama al método `base`. Escribe un número en otra base y devuelve una cadena de dígitos:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
