---
title: Firmas
---

{% include menu.html %}

En la parte de Fundamentos, [escribiste subrutinas](/es/essentials/functions). Tenían parámetros posicionales y nombrados. Los parámetros tenían valores predeterminados. La lista de parámetros es la _firma_ (signature). Esta sección muestra dos cosas más que puede hacer una firma. Puede hacer opcional un parámetro. Y puede recoger cualquier número de argumentos extra.

## Parámetros opcionales

Un parámetro con un signo de interrogación detrás es _opcional_. Quien llama a la función puede dejarlo fuera. Entonces el parámetro está indefinido. Así que puedes dar otro valor para usar en su lugar. Usa para esto el operador defined-or `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Aquí, llamamos a `greet` con un argumento. Entonces `$greeting` está indefinido. Así que `//` da `'Hello'` en su lugar.

## Parámetros slurpy

Un parámetro con un `*` es _slurpy_. Toma todos los argumentos que quedan. Escribes un array slurpy con `*@`. Recoge cualquier número de argumentos posicionales en un array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Puedes usar parámetros normales junto con uno slurpy. Primero, los parámetros fijos reciben sus valores. Todo lo demás va al array slurpy:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Un hash slurpy funciona de la misma manera. Lo escribes con `*%`. Recoge todos los argumentos nombrados extra en un hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

Los dos argumentos nombrados se convierten en claves de `%options`. Así que el programa imprime:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
