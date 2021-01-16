/**
* Say you have an array for which the ith element is the
* price of a given stock on day i. If you were only permitted to complete
* at most one transaction (i.e., buy one and sell one share of the stock),
* design an algorithm to find the maximum profit.
* Note that you cannot sell a stock before you buy one.
*/

/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function(prices) {
  var min = prices[0];
  var profit = 0;

  for(i=0; i < prices.length; i++) {
    if (min > prices[i]) {
      min = prices[i];
    } else if (prices[i] - min > profit) {
      profit = prices[i] - min;
    }
  }

  return profit;
};

console.log(maxProfit([7,1,5,3,6,4]));
console.log(maxProfit([7,6,4,3,1]));
console.log(maxProfit([2,4,1]));
