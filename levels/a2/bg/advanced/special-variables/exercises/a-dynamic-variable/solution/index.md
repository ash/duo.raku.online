---
title: 'Solution: Динамична променлива'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

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

🦋 Можете да намерите пълния код във файла [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Резултат

```
running as guest
running as admin
```

## Коментари

1. Туигилът `*` прави `$*user` динамична. `whoami` никога не я получава като параметър. Тя намира стойността през стека на извикванията. Така първото извикване показва стойността по подразбиране, `guest`.

1. Вътрешният блок декларира `$*user` отново като `admin`. Това трае, докато блокът работи. *Същата* `whoami` сега вижда `admin`. Динамичното търсене проверява кой е на стека на извикванията сега. Вие заменяте динамична променлива в даден обхват. Тогава целият код, който извиквате оттам, получава повече права. И вие изобщо не променяте `whoami`.

{% include nav.html %}
