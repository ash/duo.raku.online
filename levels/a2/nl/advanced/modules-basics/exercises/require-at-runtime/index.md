---
title: Laden tijdens runtime
translations_gpt: Oefening 'Laden tijdens uitvoering'
---

{% include menu.html %}

## Opgave

Hier is een module, `Greeting.rakumod`. Hij exporteert een subroutine `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Laad deze module met `require`, niet met `use`. Dan laadt het programma hem tijdens de **uitvoering**, dus terwijl het programma draait. `require` importeert namen niet automatisch. Noem dus de naam die je wilt, zo: `require Greeting <&hello>;`. Roep dan `hello('Sam')` aan en druk het resultaat af.

Laat nu zien waarom laden tijdens de uitvoering nuttig is. Zet de `require` in een `sub MAIN` met een vlag `--quiet`. Het programma laadt de module *alleen* als je echt een begroeting wilt. Met `--quiet` raakt het programma de module helemaal niet aan. Het drukt alleen `Silence.` af.

## Voorbeeld

Voer het programma uit met de module op het zoekpad. Het drukt af:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
