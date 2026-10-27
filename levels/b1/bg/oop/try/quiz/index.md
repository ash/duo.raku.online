---
title: 'Тест — `try`'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма?

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

Тук се случват две неща. Първо, `die` спира веднага остатъка от блока `try`. Затова редът `say 'inside'` никога не се изпълнява и отвътре в блока не се отпечатва нищо. Второ, `try` прихваща изключението, така че самата програма не спира. Тя продължава след блока и `say 'outside'` се изпълнява както обикновено. Затова единственият отпечатан ред е `outside`. Ако погледнете, ще видите, че `$r` е недефинирана. Съобщението `Boom!` би чакало в `$!`.

</div>

{% include nav.html %}
