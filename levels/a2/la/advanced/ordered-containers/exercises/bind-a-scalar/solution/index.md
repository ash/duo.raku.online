---
title: 'Solutio: Scalarem ligare'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Inveni codicem fontem in archivo [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Exitus

```
9
1
```

## Commentarii

1. Vinculum cum `:=` copiam non facit. Facit `$bound` secundum nomen pro continenti `$source`. Itaque `$bound` mutationem `$source` videt. `9` imprimit.

1. Assignatio normalis cum `=` valorem in alium continentem copiat. Itaque mutatio posterior `$copy` non tangit. Adhuc `1` imprimit.

1. Hoc est propositum operis. Duos modos iuxta vides. `:=` continentem communicat. `=` valorem copiat.

{% include nav.html %}
