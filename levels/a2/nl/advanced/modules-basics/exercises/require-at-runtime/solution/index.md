---
title: 'Solution: Laden tijdens runtime'
translations_gpt: De oplossing van 'Laden tijdens uitvoering'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

Het programma, `require-import.raku`:

```raku
sub MAIN(Bool :$quiet) {
    if $quiet {
        say 'Silence.';
    }
    else {
        require Greeting <&hello>;
        say hello('Sam');
    }
}
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Uitvoer

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Opmerkingen

1. `require` laadt de module tijdens de uitvoering, niet tijdens het compileren. Op zichzelf importeert het niets. Raku kent de naam `hello` dus niet.

1. De lijst `<&hello>` laat `require` deze ene naam importeren. Na dit statement kun je `hello('Sam')` direct aanroepen. Dat geeft `Hello, Sam!`.

1. Dit is *waarom* we `require` hebben. Het werkt tijdens de uitvoering. Daardoor kan het in een `if` staan. Met `--quiet` slaat het programma deze tak over. Zo laadt het de module nooit. Een `use` laadt de module altijd. Het werkt tijdens het compileren.

{% include nav.html %}
