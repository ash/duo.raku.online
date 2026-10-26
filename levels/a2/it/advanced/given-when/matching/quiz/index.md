---
title: Quiz — `when`
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

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

Quando un blocco `when` corrisponde, *esce* da solo dal `given`. Raku non passa al `when` successivo. `5` soddisfa la prima condizione, `$_ > 0`. Così il programma stampa `positive`. Anche il secondo `when 5` va bene. Ma Raku non ci arriva mai.

</div>

{% include nav.html %}
