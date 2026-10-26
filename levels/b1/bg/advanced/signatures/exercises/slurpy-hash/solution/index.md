---
title: 'Solution: Slurpy именувани аргументи'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Можете да намерите пълния код във файла [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Резултат

```
Anna: colour=red, size=5
```

## Коментари

1. Фиксираният позиционен параметър `$name` получава стойността си първи. След това slurpy `*%opts` събира всички останали именувани аргументи в хеш.

1. `%opts.sort` подрежда двойките по ключ, затова изходът винаги е един и същ: `colour` идва преди `size`. `.map` превръща всяка двойка в низ `key=value` чрез `.key` и `.value`. След това `.join(', ')` съединява низовете.

1. Крайният низ включва стойностите на `$name` и на готовия `$details`. Това дава `Anna: colour=red, size=5`.

{% include nav.html %}
