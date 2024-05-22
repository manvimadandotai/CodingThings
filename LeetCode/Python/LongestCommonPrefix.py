#Problem: https://leetcode.com/problems/longest-common-prefix/description/
def longestCommonPrefix(strs) -> str:
    rec_alpha = ""
    sorted_list = sorted(strs)
    print(sorted_list)
    first_element = sorted_list[0]
    print(first_element)
    last_element = sorted_list[-1]
    print(last_element)
    print(range(min(len(first_element), len(last_element))))
    for i in range(min(len(first_element), len(last_element))):
        if ((first_element[i] != last_element[i])):
            return rec_alpha
        else:
            rec_alpha += first_element[i]
    print(rec_alpha)
    return rec_alpha
    



  

longestCommonPrefix(["dog","racecar","car"])




