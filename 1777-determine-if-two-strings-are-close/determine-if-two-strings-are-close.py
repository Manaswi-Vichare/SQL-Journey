class Solution:
    def closeStrings(self, word1: str, word2: str) -> bool:
        if len(word1) != len(word2):
            return False

        s1 = set(word1)
        s2 = set(word2)
        if s1 != s2:
            
            return False

        c1 = {}
        c2 = {}
        for char in word1:
            if not char in c1:
                c1[char] = 0
            c1[char] += 1

        for char in word2:
            if not char in c2:
                c2[char] = 0
            c2[char] += 1

        return sorted(c1.values()) == sorted(c2.values())