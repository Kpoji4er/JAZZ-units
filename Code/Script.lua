local origRandomLocId = RandomLocId
function RandomLocId()
  print("RandomLocId", GetStack())
  return origRandomLocId()
end