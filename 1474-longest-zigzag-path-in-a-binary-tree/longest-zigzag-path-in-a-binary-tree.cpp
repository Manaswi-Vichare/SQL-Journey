/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    int longestZigZag(TreeNode* root) {
        int path = 0;
        dfs(root, true, 0, path);
        dfs(root, false, 0, path);
        return path;
    }

private:
    void dfs(TreeNode* node, bool travel_left, int len, int &path) {
        if (!node) return; 
        path = max(path, len);
        if(travel_left) {
            dfs(node -> left, false, len + 1, path);
            dfs(node -> right, true, 1, path);
        }
        else {
            dfs(node -> right, true, len + 1, path);
            dfs(node -> left, false, 1, path);
        }
    }
};