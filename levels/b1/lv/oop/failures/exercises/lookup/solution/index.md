---
title: 'Risinājums: Atrasts vai nav atrasts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Atrodiet programmu failā [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Izvade

```
not found
reason: no such key
```

## Komentāri

1. `lookup('z')` izsauc `fail`, tāpēc tā atgriež nedefinētu `Failure`.

1. Rezultāts ir nedefinēts, tāpēc programma izdrukā `not found`. Tā nemēģina izmantot neizdevušos vērtību.

1. `Failure` joprojām nes līdzi izņēmumu, kas apraksta, kas nogāja greizi. To jūs iegūstat ar `$r.exception`. Tas arī atzīmē neveiksmi kā apstrādātu, tāpēc tā vēlāk neizmetīs izņēmumu. Pēc tam `.message` nolasa tekstu, kas tika padots `fail`, proti, `no such key`.

{% include nav.html %}
