---
title: 'Solution: Een dynamische variabele'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De `*`-twigil maakt `$*user` dynamisch. `whoami` krijgt hem nooit als parameter. In plaats daarvan vindt hij de waarde door naar buiten te zoeken via de call stack. Dus toont de eerste aanroep de standaardwaarde, `guest`.

1. Het binnenste blok declareert `$*user` opnieuw als `admin`, en dat geldt zolang het blok loopt. *Dezelfde* `whoami` ziet nu `admin`. Dat komt doordat dynamisch opzoeken volgt wie er op dat moment op de stack staat. Als je een dynamische variabele in een scope overschrijft, geeft dat meer rechten aan alles wat je van daaruit aanroept. En je hoeft `whoami` helemaal niet te veranderen.

{% include nav.html %}
