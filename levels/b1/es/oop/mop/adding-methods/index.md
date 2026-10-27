---
title: Añadir métodos en tiempo de ejecución
translations_gpt:
---

{% include menu.html %}

Puedes usar el MOP no solo para inspeccionar un tipo. También puede **cambiar** un tipo mientras el programa se ejecuta. El metamétodo `.^add_method` añade un método nuevo a una clase:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

La clase `Empty` no tiene ningún método. Después `Empty.^add_method('greet', …)` añade un método llamado `greet`, que se da como un `method { … }` anónimo. Desde ese momento, todo objeto `Empty` responde a `.greet`. Funciona igual que si estuviera escrito en la clase.

Esto es metaprogramación de verdad. Le decimos al metaobjeto de `Empty` que cree un método nuevo. El mismo protocolo está detrás de funciones que ya has usado. En principio, funciona así. Cuando escribes `class`, `role`, `has` o `method`, el compilador construye tu tipo por ti. Lo hace con métodos del MOP como `.^add_method` y `.^add_attribute`.

Decimos «en principio» porque esto es un modelo del lenguaje. No es una promesa sobre ningún compilador concreto. El sistema de objetos está *definido* en términos del MOP. Pero ¿una implementación concreta envía de verdad cada declaración a través de esos metamétodos? ¿Y puedes ver cómo lo hace? Eso depende de cada implementación. Por la misma razón, *llamar* tú mismo a estos metamétodos depende de la implementación. Los compiladores pueden ofrecer metamétodos distintos, y su comportamiento exacto puede variar. Así que el código con `.^add_method` y métodos parecidos puede funcionar de otra forma en cada Raku.

Añadir métodos en tiempo de ejecución es una herramienta potente, pero rara vez la necesitarás. La mayoría de los programas nunca la usan. Pero es lo que hace que el sistema de objetos de Raku sea abierto. Las propias reglas de las clases están escritas con el MOP, así que puedes ampliarlas. En el código de todos los días, la parte del MOP que de verdad usarás es la inspección. Has visto estos metamétodos en el tema anterior.

{% include nav.html %}
