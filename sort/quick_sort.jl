function quick_sort(arr)
    nums = arr
    if (length(nums) <= 1)
        return nums
    else
        pivot = pop!(nums)
        greater = []
        lesser = []
        for element in nums
            if(element > pivot)
                push!(greater, element)
            else
                push!(lesser, element)
            end
        end
    end
    temp = push!(quick_sort(lesser), pivot)
    return append!(temp, quick_sort(greater))
end


