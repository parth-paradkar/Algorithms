function selection_sort(arr)
    nums = arr
    for i in 1:length(nums)
        index_least = i
        for k in i+1:length(nums)
            if(nums[k] < nums[index_least])
                index_least = k
            end
        end
        temp = nums[index_least]
        nums[index_least] = nums[i]
        nums[i] = temp
    end
    return nums
end