---
title: 'Тест — `try`'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside, после outside
0 | Boom!
0 | грешка

{% include quiz.html %}

<div class="extended-explanation">

Тук се случват две неща. Първо, `die` спира веднага остатъка от блока `try`. Затова програмата никога не стига до реда `say 'inside'`. Нищо отвътре в блока не се отпечатва. Второ, `try` прихваща изключението, грешката от `die`. Затова самата програма не спира. Тя продължава след блока. `say 'outside'` се изпълнява както обикновено. Затова програмата отпечатва само един ред: `outside`. Можете също да погледнете `$r` и `$!`. `$r` е недефинирана. Съобщението `Boom!` чака в `$!`.

</div>

{% include nav.html %}
