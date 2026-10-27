---
title: El protocolo de metaobjetos 🆕
translations_gpt:
---

{% include menu.html %}

Cada clase, rol y tipo de Raku está descrito por otro objeto, llamado su _metaobjeto_. El metaobjeto conoce el nombre del tipo y su lugar en el árbol de herencia. También conoce los atributos y los métodos del tipo. La forma de trabajar con estos metaobjetos es el _protocolo de metaobjetos_, o MOP.

Ya has usado una pequeña parte de él: `.^name` es una llamada al MOP. Esta sección explica bien la sintaxis `.^`. Muestra los metamétodos más útiles para mirar dentro de un tipo. Y muestra que el MOP te permite incluso añadir métodos a una clase. Puedes hacerlo mientras el programa se ejecuta.

{% include nav.html %}
