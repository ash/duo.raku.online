---
title: Excepciones propias
translations_gpt:
---

{% include menu.html %}

Raku tiene excepciones incorporadas `X::`, pero también puedes crear las tuyas. Una excepción personalizada es una clase que hereda de la clase incorporada `Exception`. También tiene un método `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` es una clase normal, así que puede tener atributos como `value`. Pero como es `is Exception`, puedes lanzarla. Para lanzarla, creas un objeto y llamas a `.throw` sobre él:

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

Dentro del `CATCH`, `when TooBig` coincide porque el objeto lanzado tiene ese tipo. Una excepción personalizada lleva los datos que le des, aquí el `value`. Así que el manejador puede crear un mensaje exacto o reaccionar de una forma especial. Eso es mucho más útil que una simple cadena pasada a `die`.

Esta página reúne todo lo de esta parte. Una excepción personalizada es una _clase_ con atributos y un método. También participa en el sistema de excepciones de Raku. Así que está lista para informar exactamente de qué salió mal.

{% include nav.html %}
