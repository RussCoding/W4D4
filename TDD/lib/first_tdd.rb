def my_uniq(arr)
    raise ArgumentError if !arr.is_a?(Array)
    arr2 = []
    arr.each {|ele| arr2 << ele unless arr2.include?(ele)}
    arr2
end

