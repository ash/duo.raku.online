---
title: Рендеринг Pod
translations_gpt:
---

{% include menu.html %}

В вашем файле может быть Pod. Тогда компилятор может превратить его в форматированный текст. Для этого он не запускает программу. Используйте опцию `--doc`:

```
raku --doc mymodule.raku
```

Возьмите прошлый пример с заголовком и абзацем. Для него команда печатает примерно такое:

```
My Module

This module does something useful.
```

Это работает и со списками, и с блоками кода. Посмотрите на этот Pod:

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

С `raku --doc` он печатает вот что:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Каждый `=item` становится пунктом с маркером. Блок `=begin code … =end code` сдвигается немного вправо. Его текст остаётся точно таким, как вы его написали.

## Как превратить Pod в HTML

Так же вы можете получить и другие форматы. Для HTML установите модуль-форматтер. Вы делаете это только один раз. Потом напишите его имя после `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Теперь тот же документ выходит в виде HTML. Заголовок становится элементом `<h1>`. Список становится `<ul>` с пунктами `<li>`. Блок кода становится `<pre>`:

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

Ещё инструмент помещает это в полную HTML-страницу. Официальную документацию Raku на [docs.raku.org](https://docs.raku.org) делают именно так. Она получается из файлов Pod.

{% include nav.html %}
