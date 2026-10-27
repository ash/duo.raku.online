---
title: El protocolo de metaobjetos 🆕
translations_gpt:
---

{% include menu.html %}

En Raku, otro objeto describe cada clase, rol y tipo. Este objeto es su _metaobjeto_. El metaobjeto conoce el nombre del tipo. Conoce los atributos y los métodos del tipo. También sabe dónde está el tipo en el árbol de herencia. La forma de usar estos metaobjetos es el _protocolo de metaobjetos_, o MOP.

Ya has usado una parte pequeña de él: `.^name` es una llamada al MOP. Esta sección explica bien la sintaxis `.^`. Muestra los metamétodos más útiles. Son métodos de un metaobjeto. Con ellos, puedes mirar dentro de un tipo. Con el MOP, incluso puedes añadir métodos a una clase. Puedes hacerlo mientras el programa se ejecuta.

{% include nav.html %}
