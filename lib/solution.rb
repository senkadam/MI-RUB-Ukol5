# To change this template, choose Tools | Templates
# and open the template in the editor.

require_relative("segment.rb")

class Solution
  attr_accessor :solutions 
  
  def initialize
    
  end
  
  def initialize(end_point)
    @end_point=2*end_point
    @line=Array.[]
    for index in 0...@end_point
      @line[index]=1
    end
    @solutions=Array.[]
    @solutions.clear
  end
  
  def add_seg(segment)
    ret=true
    inserted=true
    for index in 0...@end_point
      if index>=segment.l*2
        if index<=segment.r*2
          if @line[index]==1
            @line[index]=0
            if inserted
              inserted=false           
              @solutions.push(segment)
            end
          end
        end
      end
      if @line[index]==1
        ret=false
      end
      #self.p
    end
   
    ret
  end
  
  def set_line(i,value)
    @line[i]=value
  end
  

  def p
    s=String.new
    s=s+@solutions.size.to_s+"\n"
    @solutions.each do |sol| 
      s=s + sol.to_s+"\n"
    end
    s
  end
  
  def clone
    cl=Solution.new(@end_point/2)
    for index in 0...@end_point
      cl.set_line(index, @line[index])
    end
    @solutions.each do |sol|
      cl.solutions.push(sol)
    end
    cl
  end

 


end