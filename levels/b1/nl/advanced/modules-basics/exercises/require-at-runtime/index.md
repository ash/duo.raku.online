---
title: Laden tijdens runtime
translations_gpt: Oefening 'Laden tijdens uitvoering'
---

{% include menu.html %}

## Opgave

Je hebt een module `Greeting.rakumod`, die een subroutine `hello` exporteert:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Laad deze module met `require` in plaats van `use`. Dan wordt hij tijdens de **uitvoering** geladen. `require` importeert namen niet automatisch. Je moet dus het symbool noemen dat je wilt, met `require Greeting <&hello>;`. Roep vervolgens `hello('Sam')` aan en druk het resultaat af.

Deze opgave laat ook zien waar laden tijdens de uitvoering goed voor is. Zet de `require` in een `sub MAIN` met een `--quiet`-vlag. Dan wordt de module *alleen* geladen als er echt een begroeting nodig is. Met `--quiet` drukt het programma `Silence.` af en raakt het de module helemaal niet aan.

## Voorbeeld

Als je het uitvoert met de module op het zoekpad, drukt het programma af:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
