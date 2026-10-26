---
title: Рендериране на Pod
translations_gpt:
---

{% include menu.html %}

Във вашия файл може да има Pod. Тогава компилаторът може да го превърне във форматиран текст. За това той не изпълнява програмата. Използвайте опцията `--doc`:

```
raku --doc mymodule.raku
```

Вземете по-ранния пример със заглавие и параграф. За него командата отпечатва нещо такова:

```
My Module

This module does something useful.
```

Това работи и със списъци, и с кодови блокове. Вижте този Pod:

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

С `raku --doc` той отпечатва това:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Всеки `=item` става точка от списък. Блокът `=begin code … =end code` се мести малко надясно. Текстът му остава точно както сте го написали.

## Превръщане на Pod в HTML

По същия начин можете да получите и други формати. За HTML инсталирайте форматиращ модул. Правите това само веднъж. След това напишете името му след `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Сега същият документ излиза като HTML. Заглавието става `<h1>`. Списъкът става `<ul>` с елементи `<li>`. Кодовият блок става `<pre>`:

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

Инструментът също слага това в пълна HTML страница. Официалната документация на Raku на [docs.raku.org](https://docs.raku.org) се прави по този начин. Тя идва от Pod файлове.

{% include nav.html %}
