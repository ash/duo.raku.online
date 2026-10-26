---
title: 'Solution: Een dynamische variabele'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Je kunt de broncode vinden in het bestand [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Uitvoer

```
running as guest
running as admin
```

## Opmerkingen

1. De twigil `*` maakt `$*user` dynamisch. `whoami` krijgt hem nooit als parameter. Hij vindt de waarde via de call stack. Dus toont de eerste aanroep de standaardwaarde, `guest`.

1. Het binnenste blok declareert `$*user` opnieuw als `admin`. Dat geldt zolang het blok loopt. *Dezelfde* `whoami` ziet nu `admin`. Dynamisch opzoeken kijkt wie er nu op de call stack staat. Je overschrijft een dynamische variabele in een scope. Dan krijgt alle code die je van daaruit aanroept meer rechten. En je verandert `whoami` helemaal niet.

{% include nav.html %}
