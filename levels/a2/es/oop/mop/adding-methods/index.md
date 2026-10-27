---
title: Añadir métodos en tiempo de ejecución
translations_gpt:
---

{% include menu.html %}

El MOP no sirve solo para mirar dentro de los tipos. También puede **cambiar** un tipo mientras el programa se ejecuta. El metamétodo `.^add_method` añade un método nuevo a una clase:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

La clase `Empty` no tiene ningún método. Después `Empty.^add_method('greet', …)` le añade un método. Su nombre es `greet`. El método mismo es un `method { … }` anónimo. Anónimo significa que no tiene nombre. Después de eso, puedes llamar a `.greet` sobre cada objeto `Empty`. Funciona igual que un método escrito en la clase.

Esto es metaprogramación de verdad. Metaprogramación significa código que trabaja con código. Aquí, le decimos al metaobjeto de `Empty` que cree un método nuevo. El mismo protocolo está detrás de cosas que ya usas. Esta es la idea. Escribes `class`, `role`, `has` o `method`. Entonces el compilador construye tu tipo por ti. Usa métodos del MOP como `.^add_method` y `.^add_attribute`.

Decimos «la idea» por una razón. Esto es un modelo del lenguaje. No es una promesa sobre un compilador concreto. El sistema de objetos está *definido* a través del MOP. Una implementación es un compilador de Raku. ¿Envía de verdad cada declaración a través de estos metamétodos? ¿Y puedes ver esto? Cada implementación lo decide por sí misma. También puedes *llamar* tú mismo a estos metamétodos. Por la misma razón, el resultado depende de la implementación. Los compiladores pueden darte metamétodos distintos. Estos métodos también pueden funcionar de formas distintas. El código puede usar `.^add_method` y métodos parecidos. Ese código quizás no funciona igual en todos los Raku.

Puedes añadir métodos mientras el programa se ejecuta. Es una herramienta potente. Pero casi nunca la necesitas. La mayoría de los programas nunca la usan. Pero gracias a ella, el sistema de objetos de Raku es abierto. Las reglas de las clases también están escritas con el MOP. Así que puedes ampliar estas reglas. Para el código de todos los días, necesitas otra parte del MOP. La has visto en el tema anterior. Son los metamétodos que miran dentro de los tipos.

{% include nav.html %}
