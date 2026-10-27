---
title: 'Тест — `try`'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

Тут стаються дві речі. По-перше, `die` одразу зупиняє решту блоку `try`. Тож програма ніколи не доходить до рядка `say 'inside'`. Зсередини блоку нічого не виводиться. По-друге, `try` перехоплює виняток, тобто помилку від `die`. Тож сама програма не зупиняється. Вона працює далі після блоку. `say 'outside'` виконується як звичайно. Тож програма виводить лише один рядок: `outside`. Ви можете також подивитися на `$r` і `$!`. `$r` невизначена. Повідомлення `Boom!` чекає в `$!`.

</div>

{% include nav.html %}
