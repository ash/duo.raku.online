---
title: 'Тест — `try`'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

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
0 | inside, а потім outside
0 | Boom!
0 | помилку

{% include quiz.html %}

<div class="extended-explanation">

Тут стаються дві речі. По-перше, `die` одразу зупиняє решту блоку `try`. Тож рядок `say 'inside'` ніколи не виконується, і зсередини блоку нічого не виводиться. По-друге, `try` перехоплює виняток, тож сама програма не зупиняється. Вона працює далі після блоку, і `say 'outside'` виконується як звичайно. Тож єдиний виведений рядок — `outside`. Якби ви подивилися, то побачили б, що `$r` невизначена. Повідомлення `Boom!` чекало б у `$!`.

</div>

{% include nav.html %}
