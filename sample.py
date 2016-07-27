# -*- coding: utf-8 -*-

# Sample python script. 
# This file must be in the same directory as the import files

import rand_gen as rg 

n = 10
res = rg.rand_gen(527,n)

print(res)

for i in res:
    k = ""
    for j in list(range(1,int(i)+1)):
        k = "*" + k
    print(k)

