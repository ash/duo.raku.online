---
title: Contenedores escalares
translations_gpt:
---

{% include menu.html %}

Como dice su nombre, los contenedores escalares guardan valores individuales, o escalares. Estos contenedores tienen el sigilo `$`.

Aquí tienes una forma muy simple y directa de usar un escalar:

```raku
my $lang = 'Raku';
```

La variable `$lang` es un contenedor escalar.

Por defecto, los contenedores escalares no limitan el tipo de sus datos. Así puedes guardar en ellos un valor de cualquier tipo. Esta es la forma más simple de mostrarlo. Puedes usar la misma variable para un entero y luego para una cadena:

```raku
my $value = 42;
$value = 'forty-two';
```

El autor no te anima a escribir programas de esta manera.

Internamente, esto significa lo siguiente. Por defecto, un contenedor nuevo puede guardar valores del tipo `Any`. `Any` es el tipo base de la mayoría de los otros tipos, como `Int` o `Str`.

{% include nav.html %}
