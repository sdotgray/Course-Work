fact:: Int->Int

fact n | n<=0 = 1
fact n = n * fact(n-1)