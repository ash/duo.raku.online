---
title: Visus prius?
---

{% include menu.html %}

## Problema

Scribe programma cum circulo qui sequentia facit:

1. Roga usorem ut verbum inserat.
2. Si programma verbum iam semel vidit, imprime `Visum!`.
3. Si verbum plus quam semel vidit, imprime `Visum 2 vicibus!` et sic porro.
3. Repete circulum.

## Exemplum

Sic opus cum programmate procedere potest:

```console
$ raku visum-ante.raku
Verbum: Ego
Verbum: numquam
Verbum: vidi
Verbum: a
Verbum: vidi
Visum!
Verbum: quod
Verbum: vidi
Visum 2 vicibus!
Verum
Verbum: ut
Verbum: quod
Visum!
Verbum: vidi
Visum 3 vicibus!
Verum
Verbum: serratum
Verbum: ^C
```

Ut programma desinas, preme `Ctrl+C`.

## Solutio

✅ [Vide solutionem](solutio)

{% include nav.html %}
