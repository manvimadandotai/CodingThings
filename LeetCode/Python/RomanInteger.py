def romanToInt(s:str) -> int:
    roman_dict = {'I': 1, 'V': 5, 'X' : 10,'L': 50, 'C' : 100, 'D' : 500, 'M' : 1000 }
    result_int = 0
    repeat_roman_val = 0
    rev_s = s[::-1]
    for i in rev_s:
        roman_int = roman_dict.get(i)
        if roman_int >= repeat_roman_val:
            print(roman_int, repeat_roman_val, result_int)
            result_int += roman_int 

        else:
            result_int -= roman_int
            print(roman_int, repeat_roman_val), result_int
        repeat_roman_val = roman_int 
    print(result_int)  
    return result_int

romanToInt('III')



