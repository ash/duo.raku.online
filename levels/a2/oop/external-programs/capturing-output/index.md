---
title: Capturing output
---

{% include menu.html %}

Normally, an external program prints to the screen. But maybe you want to read its output in your program. Then add `:out` when you start the program. You get back a `Proc` object. It has an `.out` handle. You can read the output from this handle:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` sends the standard output of the program into the `Proc`. Standard output is the stream for the normal output of a program. The `.out` handle works like the file handles from the previous section. `.slurp` reads all the text from it at once. The `:close` adverb is a useful shortcut. It closes the handle for you after reading. Before, you did this yourself with `.close` on a file handle. So nothing stays open. Finally, `.chomp` removes the newline at the end. `echo` adds this newline.

The same works with `shell`. This is useful with a pipeline. In a pipeline, one command sends its output to the next one. With `shell`, you can capture the final result:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

You can also capture the error stream. This stream is called standard error. A program prints its error messages there. For this stream, use `:err` and the `.err` handle. You can pass both `:out` and `:err`. Then the two streams stay apart. Each one has its own handle. So you can read each of them on its own:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Here, the shell command prints two lines. One line goes to standard output. The other line goes to standard error. The `>&2` part sends it there. We asked for both streams. So `.out` and `.err` hold them separately. The normal output of the program never mixes with its error messages.

Capturing output is very useful. An external program becomes one part of your own program. You run it and read its result. Then your program goes on and uses this data.

{% include nav.html %}
