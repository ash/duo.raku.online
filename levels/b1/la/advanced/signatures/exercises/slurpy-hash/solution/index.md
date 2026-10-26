---
title: 'Solutio: Absorptiva nominata argumenta'
translations_gpt:
---

{% include menu.html %}

Ecce una solutio possibilis.

## Codex

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Inveni codicem fontem in archivo [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Exitus

```
Anna: colour=red, size=5
```

## Commentarii

1. Parametrus positionalis fixus `$name` primus valorem suum accipit. Deinde sorbens `*%opts` omnia argumenta nominata reliqua in mappam colligit.

1. `%opts.sort` paria per claves ordinat, itaque exitus semper idem est: `colour` ante `size` venit. `.map` unumquodque par in chordam `clavis=valor` per `.key` et `.value` vertit. Deinde `.join(', ')` chordas coniungit.

1. Chorda finalis valores `$name` et perfecti `$details` includit. Hoc dat `Anna: colour=red, size=5`.

{% include nav.html %}
