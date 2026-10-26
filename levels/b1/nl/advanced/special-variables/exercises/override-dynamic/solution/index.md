---
title: 'Solution: De dynamische overschrijven'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `task` roept `log-it` aan, maar noemt `$*prefix` nooit. Toch bereikt de waarde `log-it`. Dynamisch opzoeken gaat naar buiten via de call stack, voorbij `task`. Het bereikt wie er op dat moment op de stack staat.

1. De twee blokken stellen verschillende waarden in. Dus geeft *dezelfde* `task()`-aanroep elke keer een ander prefix. Dit is wat dynamische variabelen nuttig maakt. De context bereikt diep geneste code. Je hoeft hem niet als argument door te geven via elke routine ertussen.

{% include nav.html %}
