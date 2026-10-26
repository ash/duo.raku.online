---
title: El archivo META6
translations_gpt:
---

{% include menu.html %}

Un archivo describe una distribución. Se llama `META6.json` y está en el directorio principal. Es un archivo JSON sencillo. Dice a las herramientas el nombre y la versión de la distribución. También dice qué ofrece la distribución y de qué depende:

```json
{
    "name": "Maths::Simple",
    "version": "0.0.1",
    "description": "Simple maths helpers",
    "authors": [ "Your Name" ],
    "license": "Artistic-2.0",
    "depends": [],
    "provides": {
        "Maths::Simple": "lib/Maths/Simple.rakumod"
    }
}
```

Las dos claves más importantes son `provides` y `depends`. `provides` conecta cada nombre de módulo con su archivo. El código del módulo está en este archivo. `depends` lista las otras distribuciones que esta necesita.

El archivo está en el directorio principal. Esta es la estructura estándar:

```
Maths-Simple/
├── META6.json
├── README.md
├── lib/
│   └── Maths/
│       └── Simple.rakumod
└── t/
    └── 01-basic.rakutest
```

El código del módulo está en `lib/`. La ruta de directorios coincide con las partes del nombre. En el nombre, `::` separa las partes. Por ejemplo, el módulo `Maths::Simple` está en `lib/Maths/Simple.rakumod`. Las pruebas están en `t/`. Necesitas esta estructura y un `META6.json` correcto. Entonces las herramientas pueden construir, probar e instalar la distribución.

{% include nav.html %}
