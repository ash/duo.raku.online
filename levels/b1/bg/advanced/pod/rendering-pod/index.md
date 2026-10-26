---
title: Рендериране на Pod
translations_gpt:
---

{% include menu.html %}

Когато файлът съдържа Pod, компилаторът може да го превърне във форматиран текст. Не е нужно да изпълнява програмата. За това използвайте опцията `--doc`:

```
raku --doc mymodule.raku
```

За по-ранния пример със заглавие и параграф това отпечатва нещо подобно на:

```
My Module

This module does something useful.
```

Списъците и кодовите блокове също могат да се визуализират. Вземете за пример този Pod:

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

Когато го визуализирате с `raku --doc`, той отпечатва:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Всеки `=item` става точка от списък. Блокът `=begin code … =end code` е с отстъп и се показва точно както е написан.

## Визуализиране като HTML

Така можете да получите и други формати. За HTML инсталирате веднъж форматиращ модул и после посочвате името му след `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Сега точно същият документ излиза като HTML. Заглавието става `<h1>`, а списъкът става `<ul>` с елементи `<li>`. Кодовият блок става `<pre>`:

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

Инструментът слага това в цяла HTML страница. Официалната документация на Raku на [docs.raku.org](https://docs.raku.org) се прави точно така. Тя идва от изходни файлове с Pod.

{% include nav.html %}
