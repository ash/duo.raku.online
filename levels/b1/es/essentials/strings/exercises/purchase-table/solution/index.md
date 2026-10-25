---
title: 'Solution: Tabla de compras'
---

{% include menu.html %}

## Código

Aquí tienes una posible solución:

```raku
my $chair-price = 20.57;
my $chairs = 4;
my $chairs-total = $chair-price * $chairs;

my $table-price = 50.18;
my $tables = 1;
my $tables-total = $table-price * $tables;

say "Item\tPrice\tN\tTotal";
say "Chairs\t\$$chair-price\t$chairs\t\$$chairs-total";
say "Tables\t\$$table-price\t$tables\t\$$tables-total";
```

Todos los números están escritos directamente en el código y guardados en varias variables. También usamos el operador de multiplicación `*` para calcular el resultado. Aprenderemos más sobre los operadores en las próximas secciones del curso. Pero ya ahora, un código como `$chair-price * $chairs` no debería generar ninguna duda.

Tres líneas de código imprimen las tres líneas de la tabla, incluido el encabezado. Observa cómo los caracteres de tabulación `\t` separan las columnas. En las filas de datos, también puedes ver un signo de dólar escapado: `\$`. También hay diferentes variables que queremos interpolar.

🦋 Puedes encontrar el código fuente en el archivo [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Salida

Ejecuta el programa y observa cómo imprime la tabla:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Comentarios

¿Notaste los guiones en nombres de variables como `$chair-price` o `$tables-total`? En Raku, esta es una forma perfectamente normal de nombrar variables.

No te confundas con los dos signos de dólar juntos. Raku los lee por separado. Por ejemplo, en `\$$price`, el primer signo de dólar está escapado, así que se representa a sí mismo. El segundo es parte del nombre de la variable `$price`.

Ponemos todas las cadenas entre comillas dobles. Esto permite interpolar las variables y los caracteres especiales.

Volveremos a esta tarea cuando conozcamos los arrays y los hashes.

{% include nav.html %}
