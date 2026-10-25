---
title: Virkņu salīdzināšana
---

{% include menu.html %}

Lai salīdzinātu virknes, Raku izmanto atsevišķu operatoru kopu:

`eq` | Vienāds
`ne` | Nav vienāds
`gt` | Lielāks par
`ge` | Lielāks vai vienāds
`lt` | Mazāks par
`le` | Mazāks vai vienāds

## Piemēri

Apskatiet šos piemērus, kas salīdzina divas virknes:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% include nav.html %}
