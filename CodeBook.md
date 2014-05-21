# Code Book

## Data Set Information
This dataset summarizes the original dataset [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) by the following steps. 

1. Merge the training and the test datasets
2. Extract only the measurements on the mean and standard deviation.
3. The measurements extracted is summarized as mean per subject per activity.

About the original data, please refer to the link above. The detail is not explained in this document.

<BR>
## Variables
There are 68 variables in this data set. The first two variables describe subject and activity respectively. The subjects are numbered from 1 to 30 (30 subjects) and the activity have six types of activity, namely WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING. The remaining 66 variables are measurements for each subject and activity.  
The measurement variable names consist of the following elements separated by comma and the meaning of each variable is the combination of those elements.

#### Measurement
- time : time domain signals  
- freq : frequency domain signals  

#### Type of acceleration signal
- body : body acceleration signals  
- gravity : gravity acceleration signals  

#### Device
- acc : accelerometer  
- gyro : gyroscope  

#### Subsequent Measurement
- jerk : Jerk signals  
- mag : magnitude  

#### Calculation
- mean : mean  
- std : standard deviation  

#### Axis
- x/y/z : 3-axial signals in the X, Y and Z directions
  

<BR>
## List of Variable Names
1. subject
2. activity
3. time.body.acc.mean.x
4. time.body.acc.mean.y
5. time.body.acc.mean.z
6. time.body.acc.std.x
7. time.body.acc.std.y
8. time.body.acc.std.z
9. time.gravity.acc.mean.x
10. time.gravity.acc.mean.y
11. time.gravity.acc.mean.z
12. time.gravity.acc.std.x
13. time.gravity.acc.std.y
14. time.gravity.acc.std.z
15. time.body.acc.jerk.mean.x
16. time.body.acc.jerk.mean.y
17. time.body.acc.jerk.mean.z
18. time.body.acc.jerk.std.x
19. time.body.acc.jerk.std.y
20. time.body.acc.jerk.std.z
21. time.body.gyro.mean.x
22. time.body.gyro.mean.y
23. time.body.gyro.mean.z
24. time.body.gyro.std.x
25. time.body.gyro.std.y
26. time.body.gyro.std.z
27. time.body.gyro.jerk.mean.x
28. time.body.gyro.jerk.mean.y
29. time.body.gyro.jerk.mean.z
30. time.body.gyro.jerk.std.x
31. time.body.gyro.jerk.std.y
32. time.body.gyro.jerk.std.z
33. time.body.acc.mag.mean
34. time.body.acc.mag.std
35. time.gravity.acc.mag.mean
36. time.gravity.acc.mag.std
37. time.body.acc.jerk.mag.mean
38. time.body.acc.jerk.mag.std
39. time.body.gyro.mag.mean
40. time.body.gyro.mag.std
41. time.body.gyro.jerk.mag.mean
42. time.body.gyro.jerk.mag.std
43. freq.body.acc.mean.x
44. freq.body.acc.mean.y
45. freq.body.acc.mean.z
46. freq.body.acc.std.x
47. freq.body.acc.std.y
48. freq.body.acc.std.z
49. freq.body.acc.jerk.mean.x
50. freq.body.acc.jerk.mean.y
51. freq.body.acc.jerk.mean.z
52. freq.body.acc.jerk.std.x
53. freq.body.acc.jerk.std.y
54. freq.body.acc.jerk.std.z
55. freq.body.gyro.mean.x
56. freq.body.gyro.mean.y
57. freq.body.gyro.mean.z
58. freq.body.gyro.std.x
59. freq.body.gyro.std.y
60. freq.body.gyro.std.z
61. freq.body.acc.mag.mean
62. freq.body.acc.mag.std
63. freq.body.acc.jerk.mag.mean
64. freq.body.acc.jerk.mag.std
65. freq.body.gyro.mag.mean
66. freq.body.gyro.mag.std
67. freq.body.gyro.jerk.mag.mean
68. freq.body.gyro.jerk.mag.std

