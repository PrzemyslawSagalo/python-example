def first_function(arg_1):
    v_1 = arg_1 + 2
    print(f"v_1 = {v_1}")
    return v_1


def second_function(arg_2):
    v_2 = first_function(arg_2)
    print(f"v_2 = {v_2}")
    return v_2


v_0 = 0
v_1 = first_function(2)
v_0 = v_0 + 1
v_2 = second_function(2)
v_3 = 3
