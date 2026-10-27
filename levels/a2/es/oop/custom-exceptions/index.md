---
title: Excepciones propias
translations_gpt:
---

{% include menu.html %}

Raku tiene excepciones incorporadas. Sus nombres empiezan por `X::`. También puedes crear tus propias excepciones. Las llamamos excepciones personalizadas. Una excepción personalizada es una clase. Hereda de la clase incorporada `Exception`. Así que es un tipo de `Exception`. También tiene un método `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` es una clase normal. Puede tener atributos, como `value`. Pero es `is Exception`. Así que puedes lanzarla, como un error de `die`. Para lanzarla, crea un objeto de la clase. Después llama a `.throw` sobre este objeto:

```raku
my $value = 20 * 30;

TooBig.new(value => $value).throw if $value > 50;

CATCH {
    when TooBig {
        say .message;
    }
}
```

El programa imprime:

```
Value 600 is too big
```

Dentro del `CATCH`, `when TooBig` coincide. Esto pasa porque el objeto lanzado tiene el tipo `TooBig`. Una excepción personalizada guarda los datos que le das. Aquí, estos datos son el `value`. El código que maneja la excepción es el manejador. El manejador puede usar estos datos. Puede crear un mensaje exacto. O puede reaccionar de una forma especial. Esto es mucho más útil que una simple cadena para `die`.

Aquí se junta todo lo de esta parte del curso. Una excepción personalizada es una _clase_. Tiene atributos y un método. También funciona con las herramientas de Raku para excepciones. Puedes lanzarla y capturarla. Así que puede decir exactamente qué salió mal.

{% include nav.html %}
