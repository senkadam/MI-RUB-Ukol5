# To change this template, choose Tools | Templates
# and open the template in the editor.
require_relative("solution.rb")

class Solver
  attr_writer :problem 
  
  def initialize
    @best_solution=nil
  end
  
  
  
  def solve
    @best_solution=nil
    add_line(-1,Solution.new(@problem.end_point))
    if @best_solution==nil
      sol= "0\n"
    else
      sol=@best_solution.p
    end
    sol     
  end
  
  def add_line(i,solution)
    if i>=0
      solution=solution.clone
      #puts solution.p
      b=solution.add_seg(@problem.segs[i])
      if b
        if @best_solution==nil
          @best_solution=solution.clone
        end
        if @best_solution.solutions.size>solution.solutions.size
          @best_solution=solution.clone
        end
      
      end
    end
    i=i+1
    for index in i...@problem.segs.size
      add_line(index,solution)
    end
    
  end
  
  
end
