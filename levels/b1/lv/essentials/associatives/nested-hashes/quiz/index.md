---
title: Viktorīna — Daudzlīmeņu hashes
---

{% include menu.html %}

Apskatiet šo datu struktūru:

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

Izvēlieties rindas, kas pareizi iegūst datu vienumu par 1900. gada februāri.

{:.quiz}
1 | say %statistics<1900>&lt;Feb&gt;;
1 | say %statistics{1900}&lt;Feb&gt;; | Tas ir pareizi, jo `1900` var tikt netieši pārveidots par virkni.
0 | say %statistics{1900}{Feb}; | Nepareizi, jo `Feb` jābūt virknei.
1 | say %statistics{&apos;1900&apos;}{&apos;Feb&apos;};

{% include quiz.html %}

{% include nav.html %}
