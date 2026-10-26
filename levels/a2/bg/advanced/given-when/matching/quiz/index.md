---
title: Тест — `when`
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

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

Когато блокът `when` съвпадне, той автоматично *излиза* от `given`. Raku не продължава към следващия `when`. `5` отговаря на първото условие, `$_ > 0`. Затова програмата отпечатва `positive`. Вторият `when 5` също пасва. Но Raku никога не стига до него.

</div>

{% include nav.html %}
