a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0
		if c == 0
			puts "*"
		else
			puts "NaN"
		end
	else 
		x = (-c / b).round(3)
		puts x
	end
else
	d = b**2 - 4*a*c
	if d > 0
		x1 = ((-b + Math.sqrt(d)) / (2*a)).round(3);
		x2 = ((-b - Math.sqrt(d)) / (2*a)).round(3);
	
		if x1 == -0.0
			x1 = 0.0
		end
		if x2 == -0.0
			x2 = 0.0
		end

		if x1 < x2
			puts "#{x1},#{x2}";
		else 
			puts "#{x2},#{x1}";
		end
	elsif d == 0
		x = (-b / (2*a)).round(3);
		if x == -0.0
			x = 0.0
		end
		puts x
	else
		puts "NaN"
	end
end
