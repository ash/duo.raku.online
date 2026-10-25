---
title: Running from command line
---

{% include menu.html %}

Save the program in a text file, for example, `hello.raku`. Then give the file path to the command-line tool `raku`. Here, the dollar character is the shell prompt:

```console
$ raku hello.raku
```

If the program has no errors, it runs at once. If it prints something, you see the result in the terminal:

```console
$ raku hello.raku 
Hello, World!
```

On Unix-based systems, you can add a shebang. This is a special first line. You can also make the file executable:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Here are the next steps:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
