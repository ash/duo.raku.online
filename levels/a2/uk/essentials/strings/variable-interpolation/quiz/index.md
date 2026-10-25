---
title: 'Тест: Інтерполяція рядків'
---

{% include menu.html %}

Подивіться на ці рядки. У деяких із них Raku інтерполює `$x` рівно один раз. Виберіть ці рядки.

{:.quiz}
1 | &quot;The temperature is $x degrees&quot;
0 | &apos;Air pressure is $x mmHg&apos; | Немає інтерполяції в одинарних лапках.
0 | &apos;The value of \\$x is $x&apos; | Немає інтерполяції і немає екранування. Виводить `The value of \$x is $x`.
1 | &quot;The value of \\$x is $x&quot; | Весь вираз дає, наприклад, `The value of $x is 42`.
0 | &quot;The value of $x is $x&quot; | `$x` інтерполюється двічі тут.

{% include quiz.html %}
{% include nav.html %}
