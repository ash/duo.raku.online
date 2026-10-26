---
title: 'Solution: Slurpy benannte Argumente'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Zuerst bekommt der feste positionale Parameter `$name` seinen Wert. Dann sammelt der Slurpy-Parameter `*%opts` alle anderen benannten Argumente. Er legt sie in einen Hash.

1. `%opts.sort` sortiert die Paare nach Schlüssel. Also ist die Ausgabe immer gleich: `colour` kommt vor `size`. `.map` macht aus jedem Paar einen `key=value`-String. Dafür nutzt es `.key` und `.value`. Dann verbindet `.join(', ')` die Strings.

1. Der letzte String enthält die Werte von `$name` und `$details`. Wir haben `$details` vorher gebaut. Das Ergebnis ist `Anna: colour=red, size=5`.

{% include nav.html %}
