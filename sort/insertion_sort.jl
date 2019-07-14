function insertion_sort(arr)
    nums = arr
    for i in 2:length(nums)
        key = nums[i]
        j = i - 1
        # searching for index to insert
        while (j >= 0 && nums[j]>key)
            nums[j + 1] = nums[j]
            j = j -1
        end
        nums[j + 1] = key
    end
    return nums
end