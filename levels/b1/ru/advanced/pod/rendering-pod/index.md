---
title: Рендеринг Pod
translations_gpt:
---

{% include menu.html %}

Если в файле есть Pod, компилятор может превратить его в форматированный текст. Ему не нужно запускать программу. Для этого используйте опцию `--doc`:

```
raku --doc mymodule.raku
```

Для прошлого примера с заголовком и абзацем это выведет что-то вроде:

```
My Module

This module does something useful.
```

Списки и блоки кода тоже можно отрисовать. Возьмём для примера такой Pod:

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

Когда вы отрисуете его с помощью `raku --doc`, получится:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Каждый `=item` становится пунктом списка с маркером. Блок `=begin code … =end code` выводится с отступом и точно так, как он был написан.

## Отрисовка в HTML

Так можно получать и другие форматы. Для HTML нужно один раз установить модуль-форматтер, а потом указать его имя после `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Теперь точно тот же документ выводится как HTML. Заголовок становится элементом `<h1>`, а список — элементом `<ul>` из пунктов `<li>`. Блок кода становится элементом `<pre>`:

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

Инструмент помещает это в полную HTML-страницу. Так создаётся официальная документация Raku на [docs.raku.org](https://docs.raku.org). Она получается из исходных файлов с Pod.

{% include nav.html %}
