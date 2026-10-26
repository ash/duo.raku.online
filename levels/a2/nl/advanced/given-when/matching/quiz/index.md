---
title: Quiz — `when`
translations_gpt: true
---

{% include menu.html %}

Wat drukt dit programma af?

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

Als een `when`-blok matcht, *verlaat* het vanzelf de `given`. Raku gaat niet door naar de volgende `when`. `5` voldoet aan de eerste voorwaarde, `$_ > 0`. Daarom drukt het programma `positive` af. De tweede `when 5` past ook. Maar Raku komt daar nooit.

</div>

{% include nav.html %}
