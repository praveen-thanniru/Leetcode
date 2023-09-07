class Solution(object):
    def twoSum(self, nums, target):
        ans = {}
        for i in range(len(nums)):
            y = target - nums[i]
            
            #print (ans)
            if y in ans:
                return [i, ans[y]]
            ans[nums[i]] = i

        