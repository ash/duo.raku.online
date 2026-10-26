---
title: 'Solutio: Absorptiva nominata argumenta'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Primum parametrus positionalis fixus `$name` valorem suum accipit. Deinde sorbens `*%opts` omnia cetera argumenta nominata colligit. Ea in mappam ponit.

1. `%opts.sort` paria per claves ordinat. Itaque exitus semper idem est: `colour` ante `size` venit. `.map` ex quoque pari chordam `clavis=valor` facit. Ad hoc `.key` et `.value` adhibet. Deinde `.join(', ')` chordas coniungit.

1. Chorda ultima valores `$name` et `$details` in se habet. `$details` antea construximus. Resultatum est `Anna: colour=red, size=5`.

{% include nav.html %}
