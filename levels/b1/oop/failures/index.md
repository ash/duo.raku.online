---
title: Soft failures
---

{% include menu.html %}

Throwing an exception with `die` stops everything at once. Sometimes that is too strong. You may want a subroutine to report that it could not give a result. But the caller should decide whether this is fatal. For this, Raku has _soft failures_, which you create with `fail`.

When a subroutine calls `fail`, it does not throw an exception right away. Instead, it returns a special `Failure` object to the caller. A `Failure` is undefined, so the caller can quietly check for it:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

The successful call returns `5`. The failing call returns a `Failure`, and `defined` gives `False` for it. So the caller can test the result before using it.

Why is a `Failure` called _soft_? It becomes a real, thrown exception only in one case. That happens when you use it as a value without checking it first. As long as you handle it, for example by testing `defined`, it stays quiet. So a subroutine can report a problem without stopping the whole program.

## You have seen this before

This delayed kind of failure does not only come from `fail`. Earlier in this part, you met the same idea twice.

A **division by zero** quietly produces a value. It throws only when you actually use that value:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

A **failing external program** returns a `Proc`. It throws only if you throw it away without handling it. If you save it and look at it, it stays a quiet value:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

In each case, a problem does not stop the program at the moment it happens. Instead, it becomes a value that you can check. It becomes a thrown exception only when you use it unchecked or ignore it. The topic [Not every error is immediate](/oop/try/deferred-errors) shows these two examples side by side.

{% include nav.html %}
