---
title: 'Solution: Slurpy именувани аргументи'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Първо фиксираният позиционен параметър `$name` получава стойността си. След това slurpy `*%opts` събира всички други именувани аргументи. Той ги слага в хеш.

1. `%opts.sort` подрежда двойките по ключ. Затова изходът винаги е един и същ: `colour` идва преди `size`. `.map` прави низ `key=value` от всяка двойка. За това той използва `.key` и `.value`. След това `.join(', ')` съединява низовете.

1. Последният низ съдържа стойностите на `$name` и `$details`. Ние създадохме `$details` по-рано. Резултатът е `Anna: colour=red, size=5`.

{% include nav.html %}
