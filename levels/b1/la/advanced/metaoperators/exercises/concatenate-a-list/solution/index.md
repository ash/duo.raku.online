---
title: 'Solutio: URL construere'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Ordo cum forma citationis angularis `<...>` scribitur. Idem significat ac `'http', '://', 'example', '.com'`.

1. Meta-operator reductionis `[~]` operatorem `~` inter omnia elementa ponit. Hic operator fila coniungit. Ergo `[~] @parts` quattuor partes in unum filum `http://example.com` coniungit.

1. Eventum in `$url` servamus, ut eum iterum adhibere possimus. Deinde `$url.chars` ostendit totam URL `18` characteres longam esse.

{% include nav.html %}
