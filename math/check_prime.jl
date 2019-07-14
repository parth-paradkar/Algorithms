function check_prime(num)
    if (num % 2 == 0 && num !=2)
        return false
    elseif (num == 2)
        return true
    else
        flag = 1
        for i in 2:num/2
            if(num % i == 0)
                flag = 1
                break
            end
        end
        if (flag == 1)
            return true
        else
            return false
        end
    end
end