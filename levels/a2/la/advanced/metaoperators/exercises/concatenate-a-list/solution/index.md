---
title: 'Solutio: URL construere'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Inveni codicem fontem in archivo [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Exitus

```
http://example.com
18
```

## Commentarii

1. Ordo formam citationis cum uncis angularibus adhibet, `<...>`. Idem est ac `'http', '://', 'example', '.com'`.

1. `[~]` est meta-operator reductionis. Operatorem `~` inter omnia elementa ponit. Operator `~` fila coniungit. Ergo `[~] @parts` quattuor partes in unum filum coniungit, `http://example.com`.

1. Eventus in variabili `$url` est. Ergo eum iterum adhibere possumus. `$url.chars` longitudinem totius URL dat. URL `18` characteres habet.

{% include nav.html %}
