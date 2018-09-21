a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a == 0
  if b == 0
    if c == 0
      puts "Every x is solution"
    else
      puts "No solution"
    end
  else
    x = -b/c
    puts "X = #{x}"
  end
else
  d = b**2 - 4*a*c
  x1 = (-b + Math.sqrt(d))/2*a
  x2 = (-b - Math.sqrt(d))/2*a
  puts "X1 = #{x1}"
  puts "X2 = #{x2}"
end
