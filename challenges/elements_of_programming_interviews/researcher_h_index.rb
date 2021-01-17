# frozen_string_literal

# The h-index is a metric that measures both the productivity and citation
# impact of a reseracher. A researcher's h-index is the largest number h such
# that the reserrcher has published hpapers that have each been cited at least
# h-times.
#  For example:
#  Papers A,B,C,D,E,F,G,H,I which have been cited 1,4,1,4,2,1,3,5,6 times.
#  h-index is 4 (corresponding to the papers B,D,H,I)

# We can sort and go through either incremental or decremental
# and review at which point the citation value is higher than
# the remaining count of items
# O(n long n) due to the sorting
def h_index(citations)
  citations.sort!
  max = 0

  (citations.length - 1).downto(0) do |i|
    count = citations.length - i

    if citations[i] >= count
      max = count
    else
      break
    end
  end

  max
end

puts h_index([1, 4, 1, 4, 2, 1, 3, 5, 6])
