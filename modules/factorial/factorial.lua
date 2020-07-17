-- Classic Recursive factorial function

local factorial = {}

function factorial.factorial(n)
  return fact(n, 1.0)
end

function fact(n, accum)
  if n == 0 then
    return accum
  else
    return fact(n - 1, accum * n)
  end
end

return factorial
