---
title: Firmas
---

{% include menu.html %}

En la parte de Fundamentos, [definiste subrutinas con parámetros posicionales y nombrados](/es/essentials/functions). También diste valores predeterminados a los parámetros. La lista de parámetros se llama _firma_ (signature). Esta sección muestra dos cosas más que puede hacer una firma. Puede hacer opcional un parámetro y puede recoger cualquier número de argumentos extra.

## Parámetros opcionales

Un parámetro con un signo de interrogación detrás es _opcional_. Esto significa que quien llama a la función puede dejarlo fuera. En ese caso, el parámetro queda indefinido. Así que puedes darle un valor de respaldo con el operador defined-or `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Cuando se llama a `greet` con un argumento, `$greeting` queda indefinido. Así que `//` usa `'Hello'` en su lugar.

## Parámetros slurpy

Un parámetro marcado con un `*` es _slurpy_. Toma todos los argumentos que quedan. Un array slurpy, escrito `*@`, recoge cualquier número de argumentos posicionales en un array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Puedes mezclar parámetros normales con uno slurpy. Los parámetros fijos reciben sus valores primero. Lo que queda va al array slurpy:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Un hash slurpy funciona de la misma manera. Se escribe `*%` y recoge cualquier argumento nombrado extra en un hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

Los dos argumentos nombrados se convierten en claves de `%options`, así que el programa imprime:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
