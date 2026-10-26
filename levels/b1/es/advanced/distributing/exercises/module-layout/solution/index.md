---
title: 'Solution: La estructura del módulo'
translations_gpt:
---

{% include menu.html %}

Aquí hay una posible solución.

## Estructura

```
Greet-Simple/
├── META6.json
├── README.md
├── lib/
│   └── Greet/
│       └── Simple.rakumod
└── t/
    └── 01-basic.rakutest
```

## Comentarios

1. El `META6.json` está en la parte superior. El código fuente del módulo va en `lib/`. Su ruta de directorios coincide con las partes del nombre entre los `::`.

1. Las pruebas van en `t/`. Con esta estructura, `zef test .` y `zef install .` funcionan en el directorio raíz.

{% include nav.html %}
