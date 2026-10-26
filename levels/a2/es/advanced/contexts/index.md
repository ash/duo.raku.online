---
title: Contextos
---

{% include menu.html %}

En Raku, un valor puede comportarse de formas diferentes. Depende del _contexto_. El contexto es el lugar donde usas el valor. Por ejemplo, un array puede actuar como un número. Este número es su longitud. El mismo array puede actuar como una cadena. Entonces sus elementos se unen. También puede actuar como `True` o `False`. Esto muestra si el array tiene elementos o está vacío. El código alrededor del array decide qué obtienes.

El contexto explica muchas cosas en Raku. Sin él, estas cosas parecen raras. Por ejemplo, ¿por qué `+@array` es un número? ¿Por qué un array en un escalar actúa como un solo elemento? ¿Y por qué `if @array` comprueba si el array está vacío? Esta sección muestra los contextos principales.

{% include nav.html %}
