# Implementation of a stack with an O(1) find-max

The implementation uses two stacks internally with a slight optimization for
space-constrainted situations.

First stack is where our actual values are kept, second is where we track
the maximum value that currently lives in our first stack.

The max-stack is only appended to if the top of the max-stack is smaller
than the value to be appended. It's also popped from only if the value
being popped from the main stack is equal to the current maximum value.

This guarantees the max-stack doesn't grow with an O(n) rate, even on duplicate
stack values.

find-max in this case is an O(1) since it peeks the top of the max-stack
which will always contain the maximum value on the main stack, which gets
updated every push/pop conditionally.

## Run test suite

```shell
$ ruby -Itest test/max_test.rb
$ ruby -Itest test/mean_test.rb
```

## Run benchmarks

There's a naive implementation of Max embedded in the benchmark executable script

```shell
$ bundle
$ bin/benchmark
```

## Tested on

- Ruby 2.0, 2.2, 2.3

## License

MIT License

Copyright (c) 2017 Hady Mahmoud

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
