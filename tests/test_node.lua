-- Unit tests for Node
local lunatest = require "lunatest"
local Node = require "node"
local assert_equal = lunatest.assert_equal
local assert_true = lunatest.assert_true
local assert_nil = lunatest.assert_nil

function test_empty_node()
  node = Node:new()
  assert_nil(node.value or node.right or node.left, "Node is not empty")
end

function test_empty_method()
  node = Node:new()
  assert_true(node:isempty(), "Node is not empty")
end

function test_one_node()
  node = Node:new{value = 5, left = 3, right = 2}
  assert_equal(node.right, 2)
end

function test_two_nodes()
  node1 = Node:new{value = 4, left = nil, right = nil}
  node2 = Node:new{value = 5, left = node1, right = 2}
  assert_equal(node2.left.value, 4)
end

lunatest.run()
