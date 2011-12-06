# To change this template, choose Tools | Templates
# and open the template in the editor.

require_relative("problem.rb")
require_relative("segment.rb")
require_relative("solver.rb")

file = File.new("testfile")
cases=file.gets.to_i
problems=Array.[]
file.gets
while cases>0
  cases=cases-1
  end_point=file.gets.to_i
  problem=Problem.new(end_point)
  begin
    
    line=file.gets
    line.delete "\n"
    
    numbers= line.split(' ')
    a=numbers[0].to_i
    b=numbers[1].to_i
    
    
    #TODO fix this trash
    wh=true
    if(a==0)
      if(b==0)
        wh=false
      end
    end
    
    if wh
      segment=Segment.new(a,b)
      problem.add_segment(segment)
    end
  end while wh
  problems.push(problem)
  file.gets
  #puts "\n"
 
  
end
solver=Solver.new
i=0
file=File.new('output',"w");
    
problems.each do |p|
  i=i+1
  file.print("\n")
  solver.problem=(p)
  file.print(solver.solve)
  
end
file.close