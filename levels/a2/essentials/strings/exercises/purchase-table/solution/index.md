---
title: Solution to ’Purchase table‘
---

{% include menu.html %}

## Code

Here is one way to solve it:

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

All the numbers are written directly in the code. Several variables keep them. We also use the multiplication operator `*` to get the result. You will learn more about operators in the next sections of the course. But even now, code like `$chair-price * $chairs` should be clear.

Three lines of code make the output. They print the three lines of the table. The first line is the header. Look at the columns. Tab characters `\t` separate them. The data lines have an escaped dollar sign: `\$`. They also have different variables. We want to interpolate these variables.

🦋 You can find the source code in the file [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Output

Run the program. It prints the table:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Comments

Did you see the hyphens in some variable names? Look at `$chair-price` or `$tables-total`. In Raku, such names are completely fine.

Sometimes two dollar signs stand next to each other. Do not let this confuse you. Raku reads them one by one. Look at `\$$price`. The first dollar sign is escaped. So it is just a dollar sign. The second one is part of the variable name `$price`.

All the strings are in double quotes. So Raku can interpolate the variables and the special characters.

We come back to this task later. First, we learn about arrays and hashes.

{% include nav.html %}
