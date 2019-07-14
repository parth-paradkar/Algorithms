function find_lcm(a, b)
    if(a == 0 || b == 0)
        throw(DomainError())
    end
    greatest_num = a > b ? a : b
    lcm = greatest_num
    while true
        if((lcm % a)== 0 && (lcm % b == 0))
            break
        end
        lcm += greatest_num
    end
    return lcm
end