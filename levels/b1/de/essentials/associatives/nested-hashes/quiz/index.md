---
title: Quiz — Mehrstufige Hashes
---

{% include menu.html %}

Sehen Sie sich diese Datenstruktur an:

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

Wählen Sie die Zeilen aus, die das Datenelement für Februar 1900 richtig bekommen.

{:.quiz}
1 | say %statistics<1900>&lt;Feb&gt;;
1 | say %statistics{1900}&lt;Feb&gt;; | Dies ist korrekt, da `1900` implizit in einen String umgewandelt werden kann.
0 | say %statistics{1900}{Feb}; | Falsch, da `Feb` ein String sein muss.
1 | say %statistics{&apos;1900&apos;}{&apos;Feb&apos;};

{% include quiz.html %}

{% include nav.html %}
