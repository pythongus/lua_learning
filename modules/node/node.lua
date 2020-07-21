-- Node Module

Node = {value = nil, left = nil, right = nil}

function Node:new(o)
  o = o or {}
  self.__index = self
  setmetatable(o, self)
  return o
end

function Node:isempty()
  return self.value == nil
end

return Node
