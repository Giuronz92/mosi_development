#
# Example file for working with functions
# LinkedIn Learning Python course by Joe Marini
#


# TODO: define a basic function
def func1(): 
    print("i am a function!")

# TODO: function that takes arguments
def func2(arg1, arg2): 
    print(func2(arg1, " ", arg2))

# TODO: function that returns a value
def cube(x):
    return x * x * x
print(cube(3))

# function with default value for an argument
def power(num, x=1):
    result = 1
    for i in range(x):
        result = result * num
    return result

# function with variable number of arguments
def multi_add(*args):
    result = 0
    for x in args:
        result = result + x
    return result


print(power(2 , 3))
print(multi_add(2,3,5,4,2))