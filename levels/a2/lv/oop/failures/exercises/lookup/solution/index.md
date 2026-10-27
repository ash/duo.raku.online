---
title: 'Risinājums: Atrasts vai nav atrasts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `lookup('z')` izsauc `fail`. Tāpēc tā atgriež `Failure`. `Failure` ir nedefinēta vērtība ar kļūdu iekšā.

1. Rezultāts ir nedefinēts. Tāpēc programma izdrukā `not found`. Tā nemēģina izmantot neizdevušos vērtību.

1. `Failure` joprojām glabā iekšā izņēmumu. Izņēmums pasaka, kas nogāja greizi. `$r.exception` paņem šo izņēmumu. Tas arī atzīmē neveiksmi kā apstrādātu. Tāpēc tā vēlāk neizraisa kļūdu. Tad `.message` nolasa tekstu no `fail`. Šis teksts ir `no such key`.

{% include nav.html %}
