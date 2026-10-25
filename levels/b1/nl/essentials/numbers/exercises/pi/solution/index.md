---
title: 'Solution: De waarde van π'
---

{% include menu.html %}

Een programma dat de waarde van π afdrukt, is vrij eenvoudig.

## Code

```raku
say π;
```

🦋 Je kunt de volledige code vinden in het bestand [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku).

## Uitvoer

Voer het programma uit en zie wat het afdrukt:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Opmerkingen

Raku geeft ons een ingebouwde constante met de naam `π`, dus het programma is heel eenvoudig. Toch zijn hier nog een paar andere manieren om hetzelfde te doen:

```raku
    π.say;
```

Of:

```raku
    pi.say;
```

Of:

```raku
    say pi;
```

{% include nav.html %}
