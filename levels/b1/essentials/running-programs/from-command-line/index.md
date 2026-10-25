---
title: Running from command line
---

{% include menu.html %}

Save the program text in a text file, for example, `hello.raku`. Then pass its path to the command-line tool `raku`. The dollar character shows the shell prompt:

```console
$ raku hello.raku
```

If the program has no errors, it runs immediately. If there is any output, you will see it in the terminal:

```console
$ raku hello.raku 
Hello, World!
```

On Unix-based systems, you can add a shebang and make the file executable:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

The next steps are the following:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
