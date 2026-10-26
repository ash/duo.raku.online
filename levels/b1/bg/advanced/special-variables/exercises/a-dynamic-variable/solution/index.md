---
title: 'Solution: Динамична променлива'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Туигилът `*` прави `$*user` динамична. `whoami` никога не я получава като параметър. Вместо това тя намира стойността, като търси навън през стека на извикванията. Така първото извикване показва стойността по подразбиране, `guest`.

1. Вътрешният блок декларира `$*user` отново като `admin` и това трае, докато блокът работи. *Същата* `whoami` сега вижда `admin`. Това е така, защото динамичното търсене следва този, който е на стека в момента. Заменянето на динамична променлива в обхват дава повече права на всичко, което се извиква оттам. И не е нужно изобщо да променяте `whoami`.

{% include nav.html %}
