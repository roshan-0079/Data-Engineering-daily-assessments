import numpy as np

# 50 values between 1 and 10:
print(np.linspace(1, 10, 7))
print(np.linspace(1, 10, 7, endpoint=False, retstep=True))