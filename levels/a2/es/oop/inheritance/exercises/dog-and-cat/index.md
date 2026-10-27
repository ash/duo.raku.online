---
title: Empleados y roles
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una clase base `Employee`. Es la clase padre de las otras clases. Tiene un atributo `name` y dos métodos. El método `role` devuelve `'staff'`. El método `badge` devuelve la cadena `<nombre> - <rol>`. Para el rol, llama a su propio método `role`.

Después crea dos clases hijas, `Manager` e `Intern`. Heredan de `Employee`. Cada una sobrescribe `role`. Esto significa que tiene su propia versión de este método. En `Manager`, `role` devuelve `'manager'`. En `Intern`, devuelve `'intern'`.

Imprime la credencial de una gerente con el nombre `Anna`. Después imprime la credencial de un becario con el nombre `Bob`.

## Ejemplo

El programa imprime:

```
Anna - manager
Bob - intern
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
