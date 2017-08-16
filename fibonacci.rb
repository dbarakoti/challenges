# Do fibonacci

def fibo(n)
	n <= 2 ? 1 : fibo(n-1) + fibo(n-2)
end
p (1..10).map{ |x| fibo(x) }

