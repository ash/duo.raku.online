---
title: De constante lezen
translations_gpt: Oefening 'Lees de constante'
---

{% include menu.html %}

## Opgave

Je hebt een module in een bestand `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Schrijf een programma dat deze module laadt met `need`, niet met `use`. Het moet de waarde van `$pi` afdrukken. Onthoud dat `need` geen namen importeert. Je bereikt de variabele dus via de naam van de module.

## Voorbeeld

```console
$ raku -I. read-pi.raku
3.14
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
