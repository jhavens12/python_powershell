import os
import sys

psh_start = 'pwsh -c '

gam_input = psh_start +'-help'
result_1 = os.popen(gam_input).read()
print(result_1)
