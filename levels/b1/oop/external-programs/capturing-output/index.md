---
title: Capturing output
---

{% include menu.html %}

Sometimes your program needs to read what an external program prints, instead of showing it. To do this, pass `:out` when you start the program. The returned `Proc` then has an `.out` handle to read from:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` sends the program's standard output into the `Proc`. The `.out` handle works like the file handles from the previous section. `.slurp` reads everything from it at once. The `:close` adverb is a useful shortcut: it closes the handle for you after reading. You did the same clean-up yourself with `.close` on a file handle. This way, nothing stays open. Finally, `.chomp` removes the newline that `echo` adds at the end.

The same works with `shell`. This is useful when you want to capture the result of a pipeline:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

You can capture the error stream too, with `:err` and the matching `.err` handle. If you pass both `:out` and `:err`, the two streams stay apart. Each one has its own handle, so you can read them separately:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Here, the shell command prints one line to standard output and one to standard error. The `>&2` part redirects the second line there. We asked for both streams, so `.out` and `.err` hold them separately. The normal output of the program never gets mixed up with its error messages.

Capturing output lets you use an external program as a building block. You run it, read its result, and continue with that data in your own program.

{% include nav.html %}
