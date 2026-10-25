---
title: Тест — Тернарний оператор
---

{% include menu.html %}

Заповніть прогалини в програмі:

{:.quiz-code}
. | my $color = prompt &apos;Який це колір? &apos;;
?? | say $color eq &apos;blue&apos; ␣␣
!! | &nbsp;&nbsp;&nbsp;&nbsp;&apos;Це небо!&apos; ␣␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;&apos;Мені потрібно більше інформації.&apos;;

{% include quiz.html %}

## Коментар

Одна помилка з тернарним оператором у Raku — найпоширеніша. Компілятор Rakudo має для неї спеціальне повідомлення про помилку.

    ===SORRY!=== Помилка під час компіляції /Users/ash/raku-course/t.raku
    Непідтримуване використання ?  та : для тернарного умовного оператора. У
    Raku, будь ласка, використовуйте: ??  та !!.
    у /Users/ash/raku-course/t.raku:2
    ------> say $color eq 'blue' ?⏏ 'Це небо!' : 'Мені потрібно більше інформа

{% include nav.html %}
