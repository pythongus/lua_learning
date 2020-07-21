-- Classic Linked List
local Node = require "node"

LinkedList = {root = Node:new()}

function LinkedList:new(o)
  o = o or {}
  self.__index = self
  setmetatable(o, self)
  return o
end

function LinkedList:isempty()
  return self.root:isempty()
end

return LinkedList
