---
title: 'Solution: Laden tijdens runtime'
translations_gpt: De oplossing van 'Laden tijdens uitvoering'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `require` laadt de module tijdens de uitvoering in plaats van tijdens het compileren. Op zichzelf importeert het niets. Daarom zou Raku een losse `hello` niet kennen.

1. De lijst `<&hello>` vertelt `require` dat het dat ene symbool moet importeren. Na dit statement kun je `hello('Sam')` dus direct aanroepen, en dat geeft `Hello, Sam!`.

1. Hiervoor is `require` *bedoeld*. Omdat het tijdens de uitvoering werkt, kan het in een `if` staan. Als je `--quiet` meegeeft, wordt die tak overgeslagen en wordt de module nooit geladen. Een `use` tijdens het compileren zou het laden niet kunnen voorkomen.

{% include nav.html %}
