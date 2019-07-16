function binary_search(sorted_array, elem)
    slice_index = round(Int, length(sorted_array)/2)
    searched_elem = sorted_array[slice_index]
    if (length(sorted_array) != 1 && searched_elem != elem)
        return false
    end
    if (searched_elem == elem)
        return elem       
    elseif (length(sorted_array) != 1)
        if (elem < searched_elem)
            binary_search(sorted_array[1:slice_index], elem)
        else
            binary_search(sorted_array[slice_index: length(sorted_array)], elem)
        end
    end
end