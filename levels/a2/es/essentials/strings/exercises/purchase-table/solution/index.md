---
title: 'Solution: Tabla de compras'
---

{% include menu.html %}

## Código

Aquí tienes una forma de resolverlo:

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

Todos los números están escritos directamente en el código. Varias variables los guardan. También usamos el operador de multiplicación `*` para obtener el resultado. Aprenderás más sobre los operadores en las próximas secciones del curso. Pero ya ahora, un código como `$chair-price * $chairs` debe ser fácil de entender.

Tres líneas de código crean la salida. Imprimen las tres líneas de la tabla. La primera línea es el encabezado. Mira las columnas. Los caracteres de tabulación `\t` las separan. Las líneas de datos tienen un signo de dólar escapado: `\$`. También tienen diferentes variables. Queremos interpolar estas variables.

🦋 Puedes encontrar el código fuente en el archivo [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Salida

Ejecuta el programa. Imprime la tabla:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Comentarios

¿Viste los guiones en algunos nombres de variables? Mira `$chair-price` o `$tables-total`. En Raku, estos nombres están perfectamente bien.

A veces hay dos signos de dólar juntos. No te confundas por esto. Raku los lee uno por uno. Mira `\$$price`. El primer signo de dólar está escapado. Así que es solo un signo de dólar. El segundo es parte del nombre de la variable `$price`.

Todas las cadenas están entre comillas dobles. Así Raku puede interpolar las variables y los caracteres especiales.

Volvemos a esta tarea más tarde. Primero, aprendemos sobre arrays y hashes.

{% include nav.html %}
