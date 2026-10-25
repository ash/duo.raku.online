---
title: 'Solution: De waarde van π'
---

{% include menu.html %}

Het is makkelijk om de waarde van π af te drukken.

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

Raku heeft een ingebouwde constante `π`. Dus is het programma heel eenvoudig. Maar er zijn andere manieren om hetzelfde te doen:

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
