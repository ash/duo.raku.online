---
title: Quiz — Multilevel hashes
---

{% include menu.html %}

Here is a data structure:

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

Which lines get the data for February of 1900 correctly? Choose them.

{:.quiz}
1 | say %statistics<1900>&lt;Feb&gt;;
1 | say %statistics{1900}&lt;Feb&gt;; | This is correct, as `1900` can be implicitly cast to a string.
0 | say %statistics{1900}{Feb}; | Incorrect, as `Feb` must be a string.
1 | say %statistics{&apos;1900&apos;}{&apos;Feb&apos;};

{% include quiz.html %}

{% include nav.html %}
