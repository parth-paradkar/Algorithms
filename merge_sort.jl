function mrg_srt(arr::Vector)
    if length(arr) ≤ 1 return arr end
    mid = length(arr) ÷ 2
    l_part = mrg_srt(arr[1:mid])
    r_part = mrg_srt(arr[mid+1:end])
    rst = similar(arr)
    i = ri = li = 1
    @inbounds while li ≤ length(lpart) && ri ≤ length(rpart)
        if l_part[li] ≤ r_part[ri]
            rst[i] = l_part[li]
            li += 1
        else
            rst[i] = r_part[ri]
            ri += 1
        end
        i += 1
    end
    if li ≤ length(l_part)
        copy!(rst, i, l_part, li)
    else
        copy!(rst, i, r_part, ri)
    end
    return rst
end
 
v = rand(-10:10, 10)
println(" Unordered array: $v\n  Ordered array: ", mergesort(v))
