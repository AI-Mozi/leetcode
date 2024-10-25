# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
  res = Set.new
  subset(res, [], nums) 

  res.to_a
end

def subset(res, ans, nums)
  if nums.empty?
    res.add?(ans.sort)
    return
  end
  
  subset(res, ans + [nums[0]], nums[1..])
  subset(res, ans, nums[1..])
end