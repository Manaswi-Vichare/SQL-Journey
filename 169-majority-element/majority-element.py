#dsajourney-MV
class Solution(object):
    def majorityElement(self, nums):
        count = 0
        n = len(nums)
        nums.sort()
        for i in range(n):
            if nums[i] == nums[i-1]:
                count += 1 
                if count >= n/2:
                    return nums[i]      