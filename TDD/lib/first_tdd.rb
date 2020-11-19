def my_uniq(arr)
    raise ArgumentError if !arr.is_a?(Array)
    arr2 = []
    arr.each {|ele| arr2 << ele unless arr2.include?(ele)}
    arr2
end

class Array
    def two_sum
        result = []
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                result << [i, j] if i < j && self[i] + self[j] == 0
            end
        end
        result
    end
end

def my_transpose(matrix)
    
    raise ArgumentError if matrix.any? {|row| matrix.length != row.length}
    transposed = Array.new(matrix.length) {Array.new}
    matrix.each do |row|
        row.each_with_index do |ele, idx|
            transposed[idx] << ele
        end 
    end
    transposed
end