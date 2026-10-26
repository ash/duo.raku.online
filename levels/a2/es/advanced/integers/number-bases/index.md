---
title: Bases numéricas
---

{% include menu.html %}

También puedes escribir un entero en otras bases. No tiene que ser la base 10. La base 10 es el sistema decimal. Raku conoce las otras tres bases más comunes. Para ellas no necesitas nada más. Cada base tiene su propio prefijo:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binario (base 2)
say 0o17;   # 15   — octal (base 8)
```

Puedes usar cualquier base en el código. El valor es siempre el mismo entero. Solo cambia la forma de escribirlo.

Para cualquier otra base, usa la forma `:base<número>`. Se llama forma de raíz:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

También puedes ir en la otra dirección. Toma un número y escríbelo en otra base. Para esto, llama al método `base`. Da una cadena de dígitos:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
