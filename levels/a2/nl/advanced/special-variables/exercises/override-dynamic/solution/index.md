---
title: 'Solution: De dynamische overschrijven'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 Je kunt de broncode vinden in het bestand [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Uitvoer

```
INFO: working
DEBUG: working
```

## Opmerkingen

1. `task` roept `log-it` aan. Maar hij gebruikt nooit `$*prefix`. Toch komt de waarde bij `log-it`. Dynamisch opzoeken gaat terug via de call stack. Het gaat voorbij `task`. Het bereikt de code die op dat moment op de stack staat.

1. De twee blokken geven verschillende waarden. Dus geeft *dezelfde* aanroep `task()` elke keer een ander prefix. Daarom zijn dynamische variabelen nuttig. Informatie bereikt code ver weg in de keten van aanroepen. Geen enkele routine in het midden hoeft die als argument door te geven.

{% include nav.html %}
