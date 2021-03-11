# Every7
```text
For every input as "ABCD...." with K+1 digits where 0 < input <= Int.max
meaning that  ABCD... == A * 10^k + B * 10^k-1 + C * 10^k-2 + ... 
    for A is the leading digit of the number
        check if A == 1 --> result will be g(10^k-1) * A + g(BCD...)
        check if A ~ 2...6 --> result will be g(10^k) * A + g(BCD...)
        check if A == 7 --> result will be g(10^k) * A + BCD...
        check if A ~ 8...9 (or else) --> result will g(A*10^k - 1) + g(BCD...) 
```
