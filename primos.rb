class Numero
	def initialize(k=1)
		@n=k
	end
	def primeros()
		k=0
		t=3
		primos=Array.new()
		while k<@n
			primo=true
			for i in(2..t)
				if t%i==0
					primo=false
					break
				end
			end
			if primo
				primos[k]=t
				k+=1
			end
			t+=1
		end
		primos
	end
	def final()
		primos=Array.new()
		k=0
		for i in(2..@n)
			primo=true
			for j in(2..i-1)
				if i%j==0
					primo=false
					break
				end
			end
			if primo
				primos[k]=i
				k+=1
			end
		end
		primos
	end
end

sel=ARGV[0].to_i
n=ARGV[1].to_i
=begin
puts "1.\tPrimeros\n2.\tHasta"
sel = gets

puts "Da el número N"
n=gets.to_i
=end
puts n
gets()
num=Numero.new(n)
case sel
	when 1 then num.primeros.each do |i|
		puts i
	end
	else num.final.each do |i|
		puts i
	end
end