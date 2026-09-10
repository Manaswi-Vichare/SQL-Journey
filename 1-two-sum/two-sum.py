class Solution:
    def twoSum(self, nums, target):
        map = {}

        for i in range(len(nums)):
            sub = target - nums[i]

            if sub in map:
                return [map[sub], i]

            map[nums[i]] = i

        return []
