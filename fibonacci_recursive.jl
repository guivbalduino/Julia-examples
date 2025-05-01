# Recursive Fibonacci
function fib(n)
    if n <= 1
        return n
    else
        return fib(n - 1) + fib(n - 2)
    end
end

for i in 0:10
    println("fib($i) = ", fib(i))
end
