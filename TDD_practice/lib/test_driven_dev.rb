class Array 
    def my_uniq
        hash = Hash.new(0)
        self.each {|ele| hash[ele] += 1}
        return hash.keys
    end 

    def two_sum
        
    end
end 