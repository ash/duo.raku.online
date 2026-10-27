---
title: Empleados y roles
translations_gpt:
---

{% include menu.html %}

## Problema

Define una clase base `Employee` con un atributo `name` y dos métodos. El método `role` devuelve `'staff'`. El método `badge` devuelve la cadena `<nombre> - <rol>`, usando su propio método `role`.

Después define dos clases hijas, `Manager` e `Intern`, que heredan de `Employee`. Sobrescriben `role`: devuelve `'manager'` en `Manager` e `'intern'` en `Intern`.

Imprime las credenciales de una gerente llamada `Anna` y de un becario llamado `Bob`.

## Ejemplo

El programa imprime:

```
Anna - manager
Bob - intern
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
