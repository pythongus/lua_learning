-- Unit Tests
local lunatest = require "lunatest"
local factorial = require "factorial"
local assert_equal = lunatest.assert_equal

function test_factorial_3()
  result = factorial.factorial(3)
  assert_equal(result, 6)
end

lunatest.run()
