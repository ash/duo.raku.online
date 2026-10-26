---
title: Відображення Pod
translations_gpt:
---

{% include menu.html %}

Коли файл містить Pod, компілятор може перетворити його на форматований текст. Йому не треба запускати програму. Для цього використайте опцію `--doc`:

```
raku --doc mymodule.raku
```

Для попереднього прикладу із заголовком та абзацом це виводить приблизно таке:

```
My Module

This module does something useful.
```

Списки й блоки коду теж можна відобразити. Візьмімо для прикладу такий Pod:

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

Коли ви відображаєте його через `raku --doc`, він виводить:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Кожен `=item` стає пунктом із маркером. Блок `=begin code … =end code` отримує відступ і показується точно так, як його записано.

## Відображення в HTML

Так можна отримати й інші формати. Для HTML ви один раз встановлюєте модуль-форматувальник, а потім вказуєте його назву після `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Тепер точно той самий документ виходить як HTML. Заголовок стає `<h1>`, а список стає `<ul>` із пунктів `<li>`. Блок коду стає `<pre>`:

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

Інструмент вкладає це в повну HTML-сторінку. Офіційну документацію Raku на [docs.raku.org](https://docs.raku.org) створюють саме так. Вона береться з вихідних файлів Pod.

{% include nav.html %}
