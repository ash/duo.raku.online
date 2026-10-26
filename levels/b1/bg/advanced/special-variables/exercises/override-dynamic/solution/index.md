---
title: 'Solution: Презаписване на динамична променлива'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

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

🦋 Можете да намерите пълния код във файла [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Резултат

```
INFO: working
DEBUG: working
```

## Коментари

1. `task` извиква `log-it`, но никога не споменава `$*prefix`. Въпреки това стойността стига до `log-it`. Динамичното търсене върви навън през стека на извикванията, покрай `task`. То стига до този, който е на стека по това време.

1. Двата блока задават различни стойности. Така *същото* извикване на `task()` дава различен префикс всеки път. Това прави динамичните променливи полезни. Контекстът стига до дълбоко вложен код. Не е нужно да го предавате като аргумент през всяка подпрограма по средата.

{% include nav.html %}
