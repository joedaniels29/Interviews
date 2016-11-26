A = []

A[0] = -1
A[1] =  3
A[2] = -4
A[3] =  5
A[4] =  1
A[5] = -6
A[6] =  2
A[7] =  1

sum =  A.inject(:+)
lower = 0
r = []
A.each_index do |idx|
  next if idx == 0
  lower += A[idx - 1]
  upper = sum - lower - A[idx]
  r << idx if upper == lower
end
r





