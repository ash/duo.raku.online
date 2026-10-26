---
title: 'Solution: Презаписване на динамична променлива'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `task` извиква `log-it`. Но тя никога не използва `$*prefix`. Въпреки това стойността стига до `log-it`. Динамичното търсене се връща назад през стека на извикванията. То минава покрай `task`. То стига до кода, който е на стека в този момент.

1. Двата блока задават различни стойности. Така *същото* извикване `task()` дава различен префикс всеки път. Ето защо динамичните променливи са полезни. Информацията стига до код далеч надолу по веригата от извиквания. Никоя подпрограма по средата не трябва да я предава като аргумент.

{% include nav.html %}
