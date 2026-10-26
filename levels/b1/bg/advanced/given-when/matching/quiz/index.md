---
title: Тест — `when`
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма?

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

След като блокът `when` съвпадне, той автоматично *излиза* от `given`. Така няма преминаване надолу. `5` отговаря на първото условие, `$_ > 0`, затова се отпечатва `positive`. Вторият `when 5` никога не се достига, въпреки че и той би съвпаднал.

</div>

{% include nav.html %}
