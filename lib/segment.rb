# To change this template, choose Tools | Templates
# and open the template in the editor.

class Segment
  
  attr_accessor :l,:r 
  
  def initialize
    
  end
  
  def initialize(l,r)
   @l=l
   @r=r
  end
  
  def to_s
    l.to_s+" "+r.to_s
  end
end
