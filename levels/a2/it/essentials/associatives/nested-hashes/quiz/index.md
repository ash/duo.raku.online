---
title: Quiz — Hash multilivello
---

{% include menu.html %}

Ecco una struttura dati:

```raku
my %statistics =
    1900 => {
        Jan => 500,
        Feb => 550,
    },
    2000 => {
        Jan => 1230,
        Feb => 1245,
    };
```

Quali righe prendono bene i dati di febbraio 1900? Scegli queste righe.

{:.quiz}
1 | say %statistics<1900>&lt;Feb&gt;;
1 | say %statistics{1900}&lt;Feb&gt;; | Questo è corretto, poiché `1900` può essere implicitamente convertito in una stringa.
0 | say %statistics{1900}{Feb}; | Errato, poiché `Feb` deve essere una stringa.
1 | say %statistics{&apos;1900&apos;}{&apos;Feb&apos;};

{% include quiz.html %}

{% include nav.html %}
