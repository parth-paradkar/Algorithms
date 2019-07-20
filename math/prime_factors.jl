function prime_factors(num::Int)::Array
    if(num <= 0)
        return error("Enter a positive integer!")
    end
    n = num
    i :: Int = 2
    factors= []
    while i*i <= n
        if (n % i != 0)
            i += 1
        else
            n = n / i
            push!(factors, i)
        end
    end
    if (n > 1)
        push!(factors, n)
    end
end