---
title: Quiz — Multilevel hashes
---

{% include menu.html %}

Specta hanc structuram datorum:

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

Elige lineas quae elementum datorum pro Februario anni 1900 recte accipiunt.

{:.quiz}
1 | dic %statistics<1900>&lt;Feb&gt;;
1 | dic %statistics{1900}&lt;Feb&gt;; | Hoc rectum est, quia `1900` potest implicite in string converti.
0 | dic %statistics{1900}{Feb}; | Falsum, quia `Feb` debet esse string.
1 | dic %statistics{&apos;1900&apos;}{&apos;Feb&apos;};

{% include quiz.html %}

{% include nav.html %}
