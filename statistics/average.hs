import Test.HUnit

mean :: [Double] -> Double
mean xs = sum xs / length' xs

geometricMean :: [Double] -> Double
geometricMean xs = prod ** power where
    prod = product xs
    power = 1.0 / n
    n = length' xs

harmonicMean :: [Double] -> Double
harmonicMean xs = n * (sum' ** (-1.0)) where
    n = length' xs
    sum' = sum $ map (\x -> 1 / x) xs

median :: [Double] -> Double
median xs = undefined

medianOfMedians :: [Double] -> Double
medianOfMedians xs = undefined

-- helpers

length' :: [a] -> Double
length' xs = fromIntegral $ length xs

-- tests

xs = [4.0, 36.0, 45.0, 50.0, 75.0]
largeXs = [8313.0, 8782.0, 4934.0, 7563.0, 965.0, 8564.0, 1076.0, 951.0, 2685.0, 7215.0, 6560.0, 4322.0, 5616.0, 6329.0, 1911.0, 7596.0, 4282.0, 6148.0, 3896.0, 4964.0, 7069.0, 2396.0, 8853.0, 4574.0, 3883.0, 4787.0, 1290.0, 6333.0, 9567.0, 1944.0, 1194.0, 9273.0, 8781.0, 4496.0, 1539.0, 8557.0, 2275.0, 950.0, 3947.0, 7692.0, 2192.0, 9471.0, 406.0, 2051.0, 2395.0, 183.0, 3308.0, 724.0, 6532.0, 2962.0, 4372.0, 4992.0, 5485.0, 636.0, 4311.0, 2844.0, 6363.0, 1430.0, 5366.0, 7363.0, 8501.0, 6516.0, 7022.0, 8986.0, 4430.0, 5294.0, 5987.0, 3807.0, 9953.0, 9872.0, 5673.0, 567.0, 3886.0, 3189.0, 8823.0, 9454.0, 9726.0, 7652.0, 3642.0, 2980.0, 3048.0, 7222.0, 6481.0, 927.0, 2540.0, 48.0, 4667.0, 1273.0, 6995.0, 6785.0, 7467.0, 9124.0, 1956.0, 2450.0, 3097.0, 3859.0, 6267.0, 1579.0, 4845.0, 1936.0, 9648.0, 1365.0, 4692.0, 685.0, 727.0, 6630.0, 8848.0, 1926.0, 319.0, 4565.0, 2945.0, 8834.0, 5083.0, 8771.0, 2400.0, 1570.0, 4223.0, 2485.0, 6138.0, 8052.0, 8842.0, 9485.0, 6171.0, 472.0, 5177.0, 5398.0, 9884.0, 1752.0, 5683.0, 8234.0, 4441.0, 1693.0, 3839.0, 8507.0, 7813.0, 8581.0, 1571.0, 5126.0, 8556.0, 6009.0, 695.0, 7017.0, 4133.0, 5599.0, 8993.0, 6733.0, 1902.0, 3260.0, 1830.0, 1413.0, 5394.0, 6914.0, 5641.0, 1363.0, 1951.0, 5401.0, 9371.0, 5682.0, 9909.0, 436.0, 6849.0, 7408.0, 3127.0, 5042.0, 8550.0, 7856.0, 4512.0, 3154.0, 7616.0, 8999.0, 6928.0, 7460.0, 4807.0, 2603.0, 4398.0, 3178.0, 8987.0, 2165.0, 9104.0, 6114.0, 7505.0, 7392.0, 8015.0, 5670.0, 8785.0, 6843.0, 6857.0, 5368.0, 7344.0, 1201.0, 6111.0, 9043.0, 8142.0, 9448.0, 1155.0, 460.0, 7327.0, 2826.0, 2357.0, 3335.0, 1383.0, 9950.0, 2390.0, 7009.0, 7419.0, 6441.0, 3101.0, 2499.0, 7164.0, 7443.0, 3049.0, 2598.0, 8654.0, 2211.0, 5292.0, 9322.0, 8732.0, 3809.0, 2185.0, 6852.0, 6819.0, 1113.0, 6891.0, 1757.0, 6971.0, 7256.0, 9763.0, 9796.0, 2135.0, 9588.0, 8347.0, 5502.0, 888.0, 6751.0, 1167.0, 5190.0, 8797.0, 6721.0, 4469.0, 1742.0, 1800.0, 2466.0, 3910.0, 6472.0, 5816.0, 8303.0, 5859.0, 6892.0, 8185.0, 244.0, 7451.0, 2824.0, 5417.0, 5947.0, 7202.0, 4911.0, 3020.0, 9626.0, 5358.0, 5797.0, 6089.0, 2426.0, 7907.0, 5786.0, 3138.0, 5130.0, 74.0, 9629.0, 98.0, 7042.0, 6650.0, 9795.0, 4907.0, 3834.0, 3645.0, 979.0, 9670.0, 5787.0, 6074.0, 7891.0, 7753.0, 8084.0, 3228.0, 7322.0, 1260.0, 7684.0, 1640.0, 1448.0, 1229.0, 4432.0, 5045.0, 4719.0, 8602.0, 6389.0, 2319.0, 7747.0, 9308.0, 7404.0, 7980.0, 6116.0, 2277.0, 2119.0, 6304.0, 2042.0, 7464.0, 413.0, 2467.0, 1334.0, 5624.0, 4314.0, 8237.0, 7858.0, 3203.0, 7905.0, 5396.0, 6257.0, 8149.0, 2251.0, 9026.0, 4665.0, 2856.0, 8245.0, 5705.0, 192.0, 778.0, 9811.0, 3717.0, 9276.0, 9885.0, 4017.0, 2129.0, 8642.0, 9466.0, 5171.0, 3706.0, 9102.0, 6835.0, 1171.0, 1605.0, 9821.0, 1059.0, 5970.0, 9637.0, 5559.0, 771.0, 3120.0, 3118.0, 273.0, 195.0, 6013.0, 5311.0, 437.0, 4417.0, 5878.0, 4397.0, 275.0, 4054.0, 4502.0, 2107.0, 3696.0, 181.0, 4191.0, 3520.0, 3237.0, 8816.0, 1204.0, 4261.0, 2244.0, 3137.0, 1330.0, 8157.0, 1534.0, 5701.0, 1277.0, 8031.0, 2646.0, 8529.0, 7265.0, 502.0, 2829.0, 7424.0, 6755.0, 3981.0, 257.0, 6073.0, 2020.0, 5114.0, 8748.0, 4216.0, 6808.0, 2976.0, 7721.0, 7264.0, 3032.0, 3917.0, 2415.0, 6211.0, 2043.0, 5448.0, 1410.0, 8195.0, 9926.0, 584.0, 2861.0, 5826.0, 7650.0, 8475.0, 7049.0, 9652.0, 6821.0, 9491.0, 4098.0, 2212.0, 4388.0, 9745.0, 4500.0, 1739.0, 5802.0, 1434.0, 8774.0, 5842.0, 4041.0, 354.0, 1512.0, 2866.0, 7533.0, 5196.0, 6376.0, 7834.0, 5252.0, 7157.0, 7188.0, 2634.0, 7065.0, 3464.0, 3406.0, 2386.0, 2313.0, 9226.0, 1955.0, 1704.0, 7807.0, 8131.0, 6082.0, 1624.0, 4021.0, 3469.0, 8137.0, 3274.0, 5840.0, 6728.0, 9725.0, 7537.0, 1738.0, 6953.0, 8754.0, 9849.0, 2187.0, 5210.0, 1574.0, 2291.0, 1066.0, 8511.0, 8745.0, 3160.0, 1189.0, 7530.0, 4262.0, 2830.0, 8197.0, 1623.0, 8561.0, 7598.0, 2771.0, 8327.0, 5973.0, 8077.0, 8854.0, 7335.0, 1014.0, 1931.0, 1855.0, 5806.0, 9376.0, 3995.0, 9095.0, 5625.0, 6105.0, 4428.0, 8502.0, 822.0, 6362.0, 6158.0, 8158.0, 8720.0, 2886.0, 3924.0, 7385.0, 5496.0, 7137.0, 204.0, 7570.0, 5732.0, 7001.0, 5255.0, 6943.0, 1647.0, 3337.0, 3009.0, 6715.0, 5984.0, 7306.0, 816.0, 6256.0, 2263.0, 5582.0, 7510.0, 7873.0, 8027.0, 4173.0, 2650.0, 1242.0, 8319.0, 8499.0, 4662.0, 8465.0, 6517.0, 3517.0, 7438.0, 6391.0, 7193.0, 2912.0, 8467.0, 4110.0, 1723.0, 1557.0, 7556.0, 5421.0, 7379.0, 2586.0, 6059.0, 5258.0, 6381.0, 7415.0, 6584.0, 1596.0, 2732.0, 6700.0, 4623.0, 4187.0, 4608.0, 3709.0, 7843.0, 1917.0, 2851.0, 2301.0, 2469.0, 1609.0, 2760.0, 9732.0, 8312.0, 3510.0, 8696.0, 7862.0, 3509.0, 9333.0, 5135.0, 1748.0, 9957.0, 1520.0, 3453.0, 5395.0, 8258.0, 102.0, 6944.0, 9602.0, 9488.0, 1645.0, 1044.0, 7789.0, 5301.0, 9817.0, 7612.0, 2814.0, 1654.0, 7978.0, 495.0, 4664.0, 1552.0, 5977.0, 600.0, 961.0, 8076.0, 4971.0, 9195.0, 3598.0, 4155.0, 7538.0, 2548.0, 2344.0, 6130.0, 4557.0, 8296.0, 1662.0, 3122.0, 9047.0, 8699.0, 3388.0, 9197.0, 7959.0, 3470.0, 4122.0, 6175.0, 9900.0, 2222.0, 370.0, 1269.0, 6856.0, 6241.0, 6027.0, 2354.0, 3578.0, 1952.0, 5511.0, 5723.0, 5079.0, 1755.0, 736.0, 8733.0, 3447.0, 3072.0, 800.0, 7581.0, 7006.0, 8339.0, 1946.0, 455.0, 6896.0, 7898.0, 7670.0, 9773.0, 93.0, 5609.0, 4099.0, 550.0, 8576.0, 5080.0, 216.0, 8011.0, 3378.0, 3914.0, 2218.0, 2831.0, 2528.0, 6491.0, 8868.0, 858.0, 6421.0, 9577.0, 1947.0, 9039.0, 9839.0, 8839.0, 7682.0, 1373.0, 343.0, 547.0, 7619.0, 3090.0, 5811.0, 9328.0, 9723.0, 4004.0, 9888.0, 732.0, 9662.0, 8374.0, 1193.0, 2056.0, 5926.0, 6952.0, 1251.0, 5299.0, 8474.0, 1765.0, 1439.0, 5737.0, 5326.0, 2507.0, 5733.0, 2583.0, 9724.0, 8110.0, 8070.0, 5002.0, 7002.0, 2681.0, 6949.0, 412.0, 4340.0, 8622.0, 9915.0, 2061.0, 7557.0, 7325.0, 6893.0, 4578.0, 9472.0, 154.0, 5410.0, 4113.0, 9098.0, 7336.0, 8275.0, 617.0, 2198.0, 1479.0, 1977.0, 5256.0, 6221.0, 5453.0, 9551.0, 1061.0, 4987.0, 1949.0, 2174.0, 647.0, 2166.0, 7497.0, 2305.0, 5245.0, 2906.0, 6477.0, 2145.0, 7703.0, 6780.0, 2021.0, 2302.0, 9700.0, 8323.0, 8860.0, 1418.0, 6456.0, 4631.0, 1578.0, 3062.0, 2520.0, 6523.0, 2770.0, 6894.0, 42.0, 9297.0, 1780.0, 4207.0]

testMean :: Test
testMean = TestCase (assertEqualFrac 42.0 (mean xs))

testGeometricMean :: Test
testGeometricMean = TestCase (assertEqualFrac 30.0 (geometricMean xs))

testHarmonicMean :: Test
testHarmonicMean = TestCase (assertEqualFrac 15.0 (harmonicMean xs))

meanTests :: Test
meanTests = TestList [TestLabel "arithmetic mean" testMean,
                      TestLabel "geometric mean" testGeometricMean,
                      TestLabel "harmonic mean" testHarmonicMean]

testMedianEven :: Test
testMedianEven = TestCase (assertEqualFrac 47.5 (median $ tail xs))

testMedianOdd :: Test
testMedianOdd = TestCase (assertEqualFrac 45.0 (median xs))

testMedianOfMedians :: Test
testMedianOfMedians = TestCase (assertEqualFrac 45.0 (medianOfMedians xs))

testMedianOfMediansLargeInput :: Test
testMedianOfMediansLargeInput = TestCase (assertEqualFrac 4934.0 (medianOfMedians largeXs))

medianTests :: Test
medianTests = TestList [TestLabel "median of list with even length" testMedianEven,
                        TestLabel "median of list with odd length" testMedianOdd,
                        TestLabel "median of medians" testMedianOfMedians,
                        TestLabel "median of medians large input" testMedianOfMediansLargeInput]

assertEqualFrac :: (Fractional a, Eq a, Ord a, Show a) => a -> a -> Assertion
assertEqualFrac expect value = do _ <- putStr text
                                  assert eq where
    text = if eq
           then ""
           else "\n" ++ (show expect) ++ "!=" ++ (show value) ++ "\n"
    eq = (abs (expect - value)) < epsilon
    epsilon = 0.0001

main :: IO Counts
main = do _ <- runTestTT meanTests
          runTestTT medianTests
