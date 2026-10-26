---
title: Acceder al Pod
translations_gpt: true
---

{% include menu.html %}

El Pod se puede mostrar como texto con formato. Pero un programa también puede leer su propio Pod **desde dentro**, mientras se ejecuta. La variable especial `$=pod` contiene el Pod del archivo actual. Es una lista de objetos de bloque. Así un programa puede mirar su propia documentación:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Aquí, `$=pod` tiene un elemento, el bloque `pod`. Puedes recorrerlo y leer encabezados, párrafos y elementos como datos. Las herramientas que generan documentación, o que comprueban que existe, dependen de esto. La documentación se puede mostrar con `--doc` o leer a través de `$=pod`. En cualquier caso, es una parte completa del programa. No es un comentario que se descarta.

{% include nav.html %}
