---
title: Solution to ’Purchase table‘
---

{% include menu.html %}

## Code

Here is one possible solution:

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

All the numbers are written directly in the code and stored in several variables. We also use the multiplication operator `*` to calculate the result. We will learn more about operators in the next sections of the course. But already now, code like `$chair-price * $chairs` should not cause any questions.

Three lines of code print the three lines of the table, including the header. Note how tab characters `\t` separate the columns. In the data rows, you can also see an escaped dollar sign: `\$`. There are also different variables that we want to interpolate.

🦋 You can find the source code in the file [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Output

Run the program and see how it prints the table:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Comments

Did you notice the hyphens in variable names such as `$chair-price` or `$tables-total`? In Raku, this is a perfectly normal way to name variables.

Do not be confused by the two dollar signs next to each other. Raku reads them separately. For example, in `\$$price`, the first dollar sign is escaped, so it stands for itself. The second one is part of the variable name `$price`.

We put all the strings in double quotes. This allows interpolation of the variables and special characters.

We will come back to this task when we know about arrays and hashes.

{% include nav.html %}
