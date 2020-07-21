-- Unit tests for linked list
local lunatest = require "lunatest"
local LinkedList = require "linkedlist"
local Node = require "node"
local assert_equal = lunatest.assert_equal
local assert_true = lunatest.assert_true

function test_empty_list()
  llist = LinkedList:new()
  assert_true(llist:isempty())
end

lunatest.run()
