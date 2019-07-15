function bubble_sort(arr)
    nums = arr
    for iter in 1:length(nums) - 1
        j = 1
        while (j < length(nums) - iter + 1)
            if (nums[j + 1] < nums[j])
                # swap elements
                temp = nums[j + 1]
                nums[j + 1] = nums[j]
                nums[j] = temp
            end
            j += 1
        end
    end
    return nums
end