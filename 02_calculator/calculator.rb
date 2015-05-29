def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arry)
	sum = 0
	arry.each do |i|
		sum += i
	end
	return sum
end

def multiply(arry)
	arry.inject(:*)
end

def power (num1, num2)
	num1**num2
end

def factorial(num)
	if num == 0
		return 1
	else
		factorial = 1
		1.upto(num) do |i|
			factorial *= i
		end
		return factorial
	end
end
