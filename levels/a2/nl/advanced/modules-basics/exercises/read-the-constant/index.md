---
title: De constante lezen
translations_gpt: Oefening 'Lees de constante'
---

{% include menu.html %}

## Opgave

Hier is een module in het bestand `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Schrijf een programma. Het laadt deze module met `need`, niet met `use`. Dan drukt het de waarde van `$pi` af. Onthoud: `need` importeert geen namen. Je komt dus bij de variabele via de naam van de module.

## Voorbeeld

```console
$ raku -I. read-pi.raku
3.14
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
