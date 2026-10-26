---
title: 'Solution: Slurpy benannte Argumente'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Den Quellcode finden Sie in der Datei [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Ausgabe

```
Anna: colour=red, size=5
```

## Kommentare

1. Der feste positionale Parameter `$name` bekommt zuerst seinen Wert. Dann sammelt der Slurpy-Parameter `*%opts` alle restlichen benannten Argumente in einem Hash.

1. `%opts.sort` ordnet die Paare nach Schlüssel, also ist die Ausgabe immer gleich: `colour` kommt vor `size`. Das `.map` macht mit `.key` und `.value` aus jedem Paar einen `key=value`-String. Dann fügt `.join(', ')` die Strings zusammen.

1. Der letzte String enthält die Werte von `$name` und vom fertigen `$details`. Das ergibt `Anna: colour=red, size=5`.

{% include nav.html %}
