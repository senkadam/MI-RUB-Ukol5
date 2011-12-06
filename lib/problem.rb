# To change this template, choose Tools | Templates
# and open the template in the editor.

class Problem
  
  attr_accessor :end_point,:segs
  
  def initialize
    
  end
  
  def initialize(end_point)
    @end_point=end_point
    @segs=Array.[]
  end
  
  def add_segment(seg)
    @segs.push(seg)
  end
  
  
end
