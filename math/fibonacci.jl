function fibonacci(n)
    arr = [0]
    a = 0
    b = 1
    sum = 0
    for i in 1:n-1
        push!(arr, b)
        sum = a + b
        a = b
        b = sum
    end
    return arr
end
