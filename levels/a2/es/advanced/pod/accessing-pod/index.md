---
title: Acceder al Pod
translations_gpt: true
---

{% include menu.html %}

Puedes mostrar el Pod como texto con formato. Pero un programa también puede leer su propio Pod **desde dentro**. Lo hace mientras se ejecuta. La variable especial `$=pod` guarda el Pod del archivo actual. Es una lista de objetos de bloque. Así un programa puede mirar su propia documentación:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Aquí, `$=pod` tiene un elemento: el bloque `pod`. Puedes entrar en este bloque. Allí puedes leer encabezados, párrafos y elementos como datos. Algunas herramientas crean documentación. Otras herramientas comprueban que la documentación está allí. Todas estas herramientas necesitan esto. Puedes mostrar la documentación con `--doc`. O puedes leerla a través de `$=pod`. En los dos casos, es una parte real del programa. No es un comentario, y Raku no la quita.

{% include nav.html %}
