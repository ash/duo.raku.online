---
title: Gebruik de converter
translations_gpt: Oefening 'Gebruik de omrekener'
---

{% include menu.html %}

## Opgave

Je hebt een module in een bestand `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Schrijf een apart programma dat deze module gebruikt. Het programma krijgt een temperatuur in Celsius als opdrachtregelargument. Het rekent die met de module om naar Fahrenheit en drukt het resultaat af.

## Voorbeeld

```console
$ raku -I. temperature.raku 100
212
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
