---
title: Quiz — Classes
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit? Memento: `WHAT` *genus* ostendit. Sed `defined` aliud ostendit. Estne valor obiectum generis an exemplar?

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | errorem

{% include quiz.html %}

{% include nav.html %}
