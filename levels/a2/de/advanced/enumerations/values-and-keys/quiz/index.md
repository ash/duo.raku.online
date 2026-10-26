---
title: Quiz — Enum-Werte
---

{% include menu.html %}

Was gibt dieses Programm aus?

```raku
enum Day (Mon => 1, Tue => 2);
say Tue.key;
```

{:.quiz}
1 | Tue
0 | 2
0 | 1
0 | Mon

{% include quiz.html %}

<div class="extended-explanation">

`.value` gibt die Zahl hinter einer Konstante zurück. Aber `.key` gibt ihren *Namen* als String zurück. Also ist `Tue.key` gleich `Tue`. Die Zahl `2` dieser Konstante spielt hier keine Rolle.

</div>

{% include nav.html %}
