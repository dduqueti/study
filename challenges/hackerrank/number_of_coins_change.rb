# Given a value N, if we want to make change for N cents,
# and we have infinite supply of each of s = { S1, S2, .. , Sm}
# valued coins, how many ways can we make the change?
# The order of coins doesn’t matter.

# TODO!!! FINISH!!!

def count(s, n)
  m = n.size

  table = []

  for i in 0..(m-1)
    table[0][i] = 1
  end

  for i in 1..n
    for j in 0..(m-1)

      x = (i-s[j] >= 0) ? table[i - s[j]][j] : 0;

      y = (j >= 1) ? table[i][j - 1] : 0;

      table[i][j] = x + y;
    end
  end

  return table[n][m - 1];
end
