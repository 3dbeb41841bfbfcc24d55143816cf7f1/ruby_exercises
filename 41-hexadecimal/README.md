# Hexadecimal

On the web we use hexadecimal to represent colors, i.e. green: 008000, teal: 008080, navy: 000080).

Write a program that will convert a hexadecimal number, represented as a string (i.e. "10af8c"), to it's decimal equivalent using first principles (i.e. no, you may not use built-in ruby libraries or gems to accomplish the conversion).

The program should consider strings specifying an invalid hexadecimal as the value 0.

Tests are provided, delete one `skip` at a time.

## Source

All of Computer Science

00FF00

[8] pry(main)> a = 15 * (16 ** 4)
=> 983040
[9] pry(main)> b = 2 * (16 ** 3)
=> 8192
[10] pry(main)> c = 10 * (16 ** 2)
=> 2560
[11] pry(main)> d = 4 * (16 ** 1)
=> 64
[12] pry(main)> e = 12 * (16 ** 0)
=> 12
[13] pry(main)> answer = a + b + c + d + e
