---
title: Quiz — `when`
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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

Nachdem ein `when`-Block gepasst hat, *springt* er automatisch aus dem `given` *heraus*. Es gibt also kein Fall-Through. `5` erfüllt die erste Bedingung, `$_ > 0`, also wird `positive` ausgegeben. Das zweite `when 5` wird nie erreicht, obwohl es auch passen würde.

</div>

{% include nav.html %}
