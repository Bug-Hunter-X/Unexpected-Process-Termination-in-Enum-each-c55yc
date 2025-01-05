# Elixir Enum.each and Unexpected Process Termination

This repository demonstrates a subtle bug in Elixir related to using `Process.exit` within an `Enum.each` loop.  The code appears straightforward, but the use of `Process.exit` leads to unexpected termination before the iteration completes.

The file `bug.ex` contains the problematic code, while `bugSolution.ex` offers a corrected implementation.

**Problem:**  Using `Process.exit` inside `Enum.each` will prematurely halt the iteration. This is unexpected behavior for those familiar with other languages where a loop would be expected to complete regardless of what's happening inside.

**Solution:**  The preferred solution uses `Enum.map` to process each element and return a result, which avoids the unexpected termination. We can then use `Enum.each` on the resultant list if we only need to perform side-effects.