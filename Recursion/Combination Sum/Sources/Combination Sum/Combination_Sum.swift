//Input: candidates = [2,3,6,7], target = 7
//Output: [[2,2,3],[7]]
//Explanation:
//2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
//7 is a candidate, and 7 = 7.
//These are the only two combinations.


2,3,6,7

7 - 2 = 5 - 2 = 3 [possilbe solution] (2 2 3)
7 - 3 = 4 - 3 = 1 [cancel]
7 - 6 = 1 [cancel]
7 - 7 = 0

//Input: candidates = [2,3,5], target = 8
//Output: [[2,2,2,2],[2,3,3],[3,5]]

8 - 2 = 6 - 2 = 4 - 2 = 2 - 2 = 0 [valid]
8 - 3 = 5 - 3 = 2 - 2 = 0 [ valid ]
8 - 5 = 3 - 3 = 0 [ valid ]

Input: [2,3,4] target = 6

6 - 2 = 4 - 2 = 2 - 2 = 0 [valid]
6 - 3 = 3 - 3 = 0 [ valid ]
6 - 4 = 2 - 1 = 0 [ valid


]
