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
end 