import unittest
import sys
import os

sys.path.append(os.getcwd())
import MDP
import POMDP
from Utils.TigerProblem import *

class POMDPPythonIncrementalPruningTests(unittest.TestCase):

    def test_discountedHorizon(self):
        model = makeTigerProblem()
        model.setDiscount(0.95)

        horizon = 15;
        solver = POMDP.IncrementalPruning(horizon, 0.0)
        solution = solver(model)

        vf = solution[1]
        vlist = vf[horizon]

        truth = [
            ([-91.2960462266272685383228236, 18.7039537733727385671045340 ], 1, [0]),
            ([-18.6647017255443259386993304, 15.6400519533182436049401076 ], 0, [0]),
            ([-9.2894374007652391611600251 , 15.2372532254717185651315958 ], 0, [0]),
            ([-9.1073394270104568448687132 , 15.2281474451412623949408953 ], 0, [0]),
            ([-9.0719322042323611299252661 , 15.2255070494616866483283957 ], 0, [0]),
            ([-9.0672250658686337487779383 , 15.2249840340879405431451232 ], 0, [0]),
            ([-8.3962682348594448455969541 , 15.1437884651934897561886828 ], 0, [0]),
            ([-6.7962580607883573691196943 , 14.9335465202520900618310407 ], 0, [0]),
            ([-6.7682403332796141626204189 , 14.9297173844606003711987796 ], 0, [0]),
            ([-6.7671170519224235206934281 , 14.9295586137774591861671070 ], 0, [0]),
            ([-6.6978832295572425792329341 , 14.9185440901028592008970008 ], 0, [0]),
            ([-6.6354675954011774763330322 , 14.9063263567442980672694830 ], 0, [0]),
            ([3.5978798439707659895248071  , 12.6727487351471701515492896 ], 0, [0]),
            ([3.5992293947774589568666670  , 12.6724513959643871885418775 ], 0, [0]),
            ([3.6317770490051213272408859  , 12.6650349386826608366618530 ], 0, [0]),
            ([6.0145190916743329623272984  , 12.1003254654811005508463495 ], 0, [0]),
            ([6.7813661312330246744295437  , 11.9029852210666327039234602 ], 0, [0]),
            ([6.7861614182552472129827947  , 11.9016412132853162120227353 ], 0, [0]),
            ([6.8103730465170482233361327  , 11.8915302737326413762275479 ], 0, [0]),
            ([6.8937259587727552911928797  , 11.8396199916215500991256704 ], 0, [0]),
            ([9.1762520832364025125116314  , 10.1851615813664171383834400 ], 0, [0]),
            ([9.3272070958679975660743366  , 10.0684107617843388027267792 ], 0, [0]),
            ([9.3329596904102434251626619  , 10.0635752364107489142952545 ], 0, [0]),
            ([9.7284247446776745960050903  , 9.7284247446776745960050903  ], 0, [0]),
            ([10.0635752364107489142952545 , 9.3329596904102434251626619  ], 0, [0]),
            ([10.0684107617843388027267792 , 9.3272070958679975660743366  ], 0, [0]),
            ([10.1851615813664171383834400 , 9.1762520832364025125116314  ], 0, [0]),
            ([11.8396199916215500991256704 , 6.8937259587727552911928797  ], 0, [0]),
            ([11.8915302737326413762275479 , 6.8103730465170482233361327  ], 0, [0]),
            ([11.9016412132853162120227353 , 6.7861614182552472129827947  ], 0, [0]),
            ([11.9029852210666327039234602 , 6.7813661312330246744295437  ], 0, [0]),
            ([12.1003254654811005508463495 , 6.0145190916743329623272984  ], 0, [0]),
            ([12.6650349386826608366618530 , 3.6317770490051213272408859  ], 0, [0]),
            ([12.6724513959643871885418775 , 3.5992293947774589568666670  ], 0, [0]),
            ([12.6727487351471701515492896 , 3.5978798439707659895248071  ], 0, [0]),
            ([14.9063263567442980672694830 , -6.6354675954011774763330322 ], 0, [0]),
            ([14.9185440901028592008970008 , -6.6978832295572425792329341 ], 0, [0]),
            ([14.9295586137774591861671070 , -6.7671170519224235206934281 ], 0, [0]),
            ([14.9297173844606003711987796 , -6.7682403332796141626204189 ], 0, [0]),
            ([14.9335465202520900618310407 , -6.7962580607883573691196943 ], 0, [0]),
            ([15.1437884651934897561886828 , -8.3962682348594448455969541 ], 0, [0]),
            ([15.2249840340879405431451232 , -9.0672250658686337487779383 ], 0, [0]),
            ([15.2255070494616866483283957 , -9.0719322042323611299252661 ], 0, [0]),
            ([15.2281474451412623949408953 , -9.1073394270104568448687132 ], 0, [0]),
            ([15.2372532254717185651315958 , -9.2894374007652391611600251 ], 0, [0]),
            ([15.6400519533182436049401076 , -18.6647017255443259386993304], 0, [0]),
            ([18.7039537733727385671045340 , -91.2960462266272685383228236], 2, [0]),
        ]

        self.assertEqual(len(vlist), len(truth))

        # Make sure we can actually compare them
        def sorter(lhs, rhs):
            if [lhs[0][0], lhs[0][1]] < [rhs[0][0], rhs[0][1]]:
                return -1
            if [lhs[0][0], lhs[0][1]] > [rhs[0][0], rhs[0][1]]:
                return 1
            if lhs[1] < rhs[1]:
                return -1
            if lhs[1] > rhs[1]:
                return 1
            if lhs[2] < rhs[2]:
                return -1
            return 1

        truth = sorted(truth, sorter)
        vlist = sorted(vlist)

        # We check each entry by itself to avoid checking observations
        for i in xrange(0, len(vlist)):
            self.assertEqual(vlist[i].action, truth[i][1])

            values      = vlist[i].values
            values      = [values[0], values[1]]
            truthValues = truth[i][0]

            self.assertEqual(values, truthValues)

if __name__ == '__main__':
    unittest.main(verbosity=2)
