
# Simple random generator in python 

# rand_gen ----------------------------------------------------------------
'''
This function generates a string of lenght 3*x containing random numbers.
The numbers are uniformally distributed between 0 and 9.
The middle-square method is used in order to generate the result.
    seed : the initial number (3 digits recommended)
    x    : the length/3 of the resulting string
'''
def rand_gen(seed, x):
    if seed % 10 == 0:
        print("ERROR: Use another seed (avoid using multiples of 10)")
        return
    res = ""
    for i in list(range(1,int(x+1))):
        inp = seed * seed * seed
        inp = str(inp)
        pos = -1
        fl  = 0
        
        while fl == 0:
            pos = -pos
            if len(inp) > 3:
                if pos == 1:
                    inp = inp[0:-1]
                else:
                    inp = inp[1:]
            elif len(inp) == 3:
                fl = 1
            else:
                print("ERROR: Please use a different",
                      "seed (min 3 digits recommended). \n",
                      "Cause {seed, inp}: ",seed, inp)
                return
        seed = int(inp)
        res  = res + inp
    return res;
# symb_one -----------------------------------------------------------------
'''
Given an "x" this function outputs the values {-1, 1}. If x > 4 then the
result is 1, else -1. With the results of rand_gen one can generate a
random list of {-1, 1} values equally distributed {1/2, 1/2}.

x = rand_gen(725, 5)
res = []
for i in x:
    res.append(symb_one(i))
'''

def symb_one(x):
    x = int(x)
    if x > 4:
        res =  1
    else:
        res = -1
    return res;

# graf ---------------------------------------------------------------------
'''
In this section a plot of this first "n" elements of the output from rand_gen
is made. 
'''
'''

n = 500
res = rand_gen(911,n)
print(res)
for i in res:
    k = ""
    for j in list(range(1,int(i)+1)):
        k = "*" + k
    print(k)
'''
