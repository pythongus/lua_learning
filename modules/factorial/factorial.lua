-- Classic Recursive factorial function

local factorial = {}

function factorial.factorial(n)
  return fact(n, 1.0)
end

function fact(n, accum)
  return n == 0 and accum or fact(n - 1, accum * n)
end

return factorial
