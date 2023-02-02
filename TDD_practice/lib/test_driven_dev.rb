class Array 
    def my_uniq
        hash = Hash.new(0)
        self.each {|ele| hash[ele] += 1}
        return hash.keys
    end 

    def two_sum
        raise TypeError if self.any?{|ele| !ele.is_a?(Integer)}
        return [] if self.size<2 
        arr =[] 
        self.each_with_index do |ele1,i|
            self.each_with_index do |ele2,j|
                arr << [i,j].sort if ele1+ele2 == 0 && i<j 
            end 
        end 
        arr 
    end

    def my_transpose
        raise "wrong 2d array" unless self.all? {|ele| ele.is_a?(Array)}

        new_arr = Array.new(self.length) {Array.new(self[0].length)}
        self.each_index do |i|
            self.each_index do |j|
                new_arr[i][j] = self[j][i]
            end
        end
        new_arr
    end

    






end 



