---
title: Quiz — `when`
translations_gpt:
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
given 5 {
    when $_ > 0 { say 'positive' }
    when 5      { say 'five' }
}
```

{:.quiz}
1 | positive
0 | five
0 | both lines
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

Dopo che un blocco `when` ha trovato corrispondenza, *esce* automaticamente dal `given`. Quindi non c'è fall-through. `5` soddisfa la prima condizione, `$_ > 0`, quindi viene stampato `positive`. Il secondo `when 5` non viene mai raggiunto, anche se corrisponderebbe anch'esso.

</div>

{% include nav.html %}
