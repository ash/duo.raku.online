---
title: Quiz — `when`
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Wenn ein `when`-Block passt, *verlässt* er automatisch das `given`. Raku geht nicht zum nächsten `when` weiter. `5` erfüllt die erste Bedingung, `$_ > 0`. Also gibt das Programm `positive` aus. Das zweite `when 5` passt auch. Aber Raku kommt nie dorthin.

</div>

{% include nav.html %}
