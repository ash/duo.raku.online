---
title: Gebruik de converter
translations_gpt: Oefening 'Gebruik de omrekener'
---

{% include menu.html %}

## Opgave

Hier is een module in het bestand `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Schrijf een apart programma. Het gebruikt deze module. Het programma krijgt een temperatuur in Celsius als opdrachtregelargument. Het rekent de temperatuur met de module om naar Fahrenheit. Daarna drukt het programma het resultaat af.

## Voorbeeld

```console
$ raku -I. temperature.raku 100
212
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
