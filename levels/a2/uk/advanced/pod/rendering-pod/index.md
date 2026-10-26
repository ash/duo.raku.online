---
title: Відображення Pod
translations_gpt:
---

{% include menu.html %}

У вашому файлі може бути Pod. Тоді компілятор може перетворити його на форматований текст. Для цього він не запускає програму. Використайте опцію `--doc`:

```
raku --doc mymodule.raku
```

Візьміть попередній приклад із заголовком та абзацом. Для нього команда виводить приблизно таке:

```
My Module

This module does something useful.
```

Це працює і зі списками та блоками коду. Подивіться на такий Pod:

```raku
=begin pod

=head1 Shopping list

Things to buy:

=item Apples
=item Bread
=item Cheese

Run it like this:

=begin code
say 'hello';
=end code

=end pod
```

Через `raku --doc` він виводить ось що:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Кожен `=item` стає пунктом із маркером. Блок `=begin code … =end code` трохи зсувається вправо. Його текст залишається точно таким, як ви його написали.

## Перетворення Pod на HTML

Так само ви можете отримати й інші формати. Для HTML встановіть модуль-форматувальник. Ви робите це лише один раз. Потім напишіть його назву після `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Тепер той самий документ виходить як HTML. Заголовок стає `<h1>`. Список стає `<ul>` з пунктами `<li>`. Блок коду стає `<pre>`:

```html
<h1>Shopping list</h1>
<p>Things to buy:</p>
<ul>
  <li>Apples</li>
  <li>Bread</li>
  <li>Cheese</li>
</ul>
<p>Run it like this:</p>
<pre class="pod-block-code">say 'hello';</pre>
```

Інструмент також вкладає це в повну сторінку HTML. Офіційну документацію Raku на [docs.raku.org](https://docs.raku.org) роблять саме так. Вона береться з файлів Pod.

{% include nav.html %}
