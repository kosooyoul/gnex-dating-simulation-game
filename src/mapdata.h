const int SubLayer[60][40] = {
//도쿄, 서울, 오사카, 쿄토
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 14, 15, 16, 14, 15, 16, 14, 15, 16, 17, 15, 16, 14, 15, 16, 17, 22, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21,
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 24, 25, 26, 24, 25, 26, 24, 25, 26, 27, 25, 26, 24, 25, 26, 27, 22, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21,
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 34, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 22, 53, 30, 31, 31, 31, 31, 32, 53, 20, 21, 21, 21, 21,
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20,220,221,222,223,224, 16, 14, 15, 16, 17, 15,220,221,222,223,224, 22, 53, 19, 39,  0,  0,  0,  0, 53, 20, 21, 21, 21, 21,
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20,230,231,232,233,234, 26, 24, 25, 26, 27, 25,230,231,232,233,234, 22, 53, 10, 12, 13, 10, 11, 12, 53, 20, 21, 21, 21, 21,
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20,240,241,242,243,244, 34, 34, 34, 34, 34, 34,240,241,242,243,244, 22, 53, 20, 22, 23, 20, 21, 22, 53, 20, 21, 21, 21, 21,
 31, 31, 31, 31, 31, 31, 31, 32, 41, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 32, 41, 30, 32, 33, 30, 31, 32, 41, 30, 32, 33, 30, 31,
 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43,
 11, 11, 11, 11, 11, 11, 11, 12, 61, 10, 11, 11, 11, 11, 12, 13, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 61, 11, 11, 11, 11, 11, 11, 61, 11, 11, 11, 11, 11,
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 23, 20, 21, 21, 21,  1,  1,  1,  1,  1,  1,  1, 53,  1,  1,  1,  1,  1,  1, 53,  1,  1,  1,  1,  1,
 32, 31, 31, 11, 11, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 23, 20, 21, 21, 21,  3,  3,  3,  3,  3,  3,  3, 53,  3,  3,  3,  3,  3,  3, 53,  3,  3,  3,  3,  3,
 11, 12, 13, 10, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 23, 20, 21, 21, 21,  2,  2,  2,  2,  2,  2,  2, 53,  2,  2,  2,  2,  2,  2, 53,  2,  2,  2,  2,  2,
 31, 32, 33, 30, 31, 31, 31, 32, 41, 30, 31, 31, 31, 31, 32, 33, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 41, 31, 31, 31, 31, 31, 31, 41, 31, 31, 31, 31, 31,
 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43,
 12,  0, 13,  0,  0,  0,  0,  0, 61, 10, 11, 11, 12, 13, 10, 11, 12, 10, 11, 11, 11, 11, 11, 11, 11, 11, 12, 61,  0, 13,  0, 10, 11, 12, 61, 10, 11, 11, 11, 11,
 22,  0, 23,  0,  0,  0,  0,  0, 53, 20, 21, 21, 22, 23, 20, 21, 22, 20, 21, 21, 31, 31, 31, 31, 31, 31, 32, 53,  0, 23,  0, 20, 21, 22, 53, 20, 21, 21, 21, 21,
 32,  0, 33,  0,  0,  0,  0,  0, 53, 20, 21, 21, 22, 23, 20, 21, 21, 21, 21, 21, 19, 29, 29, 39,  0,  0,  0, 53,  0, 23,  0, 20, 21, 22, 53, 30, 31, 31, 31, 31,
  0, 21, 21, 21, 19, 29, 29, 39, 53, 20, 21, 21, 22, 23, 30, 31, 31, 31, 31, 31, 11, 11, 11, 11, 11, 11, 12, 53,  0, 33,  0, 30, 31, 32, 53,  0,  0,  0,  0,  0,
  0, 21, 21, 21,  0,  0,  0,  0, 53, 20, 21, 21, 22, 23, 10, 11, 11, 11, 11, 11, 21, 21, 21, 21, 21, 21, 22, 53, 10, 11, 11, 11, 11, 12, 53, 10, 11, 11, 11, 11,
 12,  0, 13,  0, 10, 11, 11, 12, 53, 20, 21, 21, 22, 23, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21,
 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 22, 13, 20, 21, 21, 21, 22, 53, 20, 21, 21, 21,
 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 22, 23, 20, 21, 21, 21, 22, 53, 20, 21, 21, 21,
 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 22, 33, 20, 21, 21, 21, 22, 53, 20, 21, 21, 21,
 31, 31, 32, 41, 30, 31, 31, 31, 31, 31, 31, 31, 32, 41, 30, 31, 31, 31, 31, 31, 21, 21, 21, 22, 53, 20, 21, 21, 22, 13, 20, 21, 21, 21, 22, 53, 20, 21, 21, 21,
 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 21, 21, 21, 22, 53, 20, 21, 21, 22, 23, 20, 21, 21, 21, 22, 53, 20, 21, 21, 21,
 11, 11, 12, 61, 10, 11, 11, 11, 11, 11, 11, 11, 12, 61, 10, 11, 11, 11, 11, 11, 31, 31, 31, 32, 41, 30, 31, 31, 32, 33, 30, 31, 31, 31, 32, 41, 30, 31, 31, 31,
 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43,
 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 11, 11, 11, 12, 61, 10, 11, 12,  0,  0,  0,  0, 10, 11, 12, 61, 10, 11, 11, 11,
 31, 31, 32, 41, 30, 31, 31, 31, 31, 31, 31, 31, 32, 41, 30, 31, 31, 31, 31, 31, 21, 21, 21, 22, 53, 20, 21, 22,  0,  0,  0,  0, 20, 21, 22, 53, 30, 31, 31, 31,
 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 21, 21, 21, 22, 53, 30, 31, 32,  0,  0,  0,  0, 30, 31, 32, 53, 10, 11, 11, 11,
  0,  0,  0,  0,  0, 10, 11, 12,  0,  0,  0,  0,  0, 61, 10, 11, 11, 11, 11, 11, 31, 31, 31, 32, 53,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 53, 20, 21, 21, 21,
 29, 39, 19, 29, 39, 20, 21, 22, 19, 29, 39,  0,  0, 53, 20, 21, 21, 21, 21, 21, 19, 29, 29, 39, 53,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 53, 20, 21, 21, 21,
  0,  0,  0,  0,  0, 30, 31, 32,  0,  0,  0, 13,  0, 53, 20, 21, 21, 21, 21, 21, 11, 11, 11, 12, 53, 10, 11, 12,  0,  0,  0,  0, 10, 11, 12, 53, 20, 21, 21, 21,
 11, 11, 11, 11, 11, 11, 11, 11, 11, 12,  0, 23,  0, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 22,  0,  0,  0,  0, 20, 21, 22, 53, 20, 21, 21, 21,
 21, 21, 21, 21, 21, 21, 21, 21, 21, 22,  0, 33,  0, 53, 20, 21, 21, 21, 21, 21, 31, 31, 31, 32, 41, 30, 31, 32,  0,  0,  0,  0, 30, 31, 32, 41, 30, 31, 31, 31,
  1,  1,  1,  1,  1,  1,  4, 21, 21, 22, 10, 11, 12, 53, 20, 21, 21, 21, 21, 21, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43,
  3,  3,  3,  3,  3,  3,  5, 21, 21, 22, 20, 21, 22, 53, 20, 21, 21, 21, 21, 21, 11, 11, 11, 12, 61, 10, 11, 11, 11, 11, 11, 11, 11, 11, 12, 61, 10, 11, 11, 11,
  3,  3,  3,  3,  3,  3,  5, 21, 21, 22, 30, 31, 32, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21,
  3,  3,  3,  3,  3,  3,  5, 21, 21, 22,  0, 13,  0, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21,
  3,  3,  3,  3,  3,  3,  5, 21, 21, 22,  0, 23,  0, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21,
//후쿠오카, 오키나와
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21,  3,  3,  5, 22,  0, 20, 21, 21, 22,  0, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,
 21, 21, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21,  3,  3,  5, 22,  0, 20, 21, 21, 22,  0, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,
 31, 31, 31, 31, 31, 31, 31, 32, 41, 30, 31, 31, 31, 31, 32, 41, 30, 31, 31, 31,  2,  2,  9, 22,  0, 20, 21, 21, 22,  0, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,
 43, 43, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 31, 31, 31, 32,  0, 20, 21, 21, 22,  0, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,
 11, 11, 11, 11, 11, 12,  0, 13, 61, 10, 11, 11, 11, 11, 12, 61, 10, 11, 11, 11,  0,  0,  0,  0,  0, 20, 21, 21, 22,  0, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,
 21, 21, 21, 21, 21, 22,  0, 23, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 29, 29, 39,  0,  0, 30, 31, 31, 32,  0, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,
 31, 31, 31, 31, 31, 32,  0, 23, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 43, 43, 43, 43, 43, 43, 42, 10, 11, 12, 20,  7,  2,  2,  2,  2,  2,  2,  2,  2,
 11, 11, 11, 11, 11, 12,  0, 23, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 11, 11, 11, 11, 11, 12, 53, 20, 21, 22, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31,
  1,  1,  1,  1,  4, 22,  0, 23, 53, 20, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 53, 30, 31, 32,  0,  0,  0,  0,  0, 10, 11, 11, 11, 11,
  3,  3,  3,  3,  5, 22,  0, 23, 53, 30, 31, 31, 31, 31, 32, 41, 30, 31, 31, 31, 21, 21, 21, 21, 21, 22, 53, 10, 11, 11, 11, 11, 11, 12,  0, 20, 21, 21, 21, 21,
  3,  3,  3,  3,  5, 22,  0, 33, 60, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 22,  0, 30, 31, 31, 31, 31,
  3,  3,  3,  3,  5, 22,  0,  0,  0, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 21, 22,  0, 10, 11, 11, 11, 11,
  3,  3,  3,  3,  5, 22,  0,  0,  0, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 31, 31, 31, 31, 31, 32, 41, 30, 31, 31, 31, 31, 31, 32,  0, 20,  8,  1,  1,  1,
  3,  3,  3,  3,  5, 22,  0,  0,  0, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 43, 43, 43, 43, 43, 50, 51, 52, 43, 43, 43, 43, 43, 42,  0, 20,  6,  3,  3,  3,
  3,  3,  3,  3,  5, 22, 10, 11, 12, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 61, 10, 11, 11, 11, 11, 12, 53, 13, 20,  6,  3,  3,  3,
  3,  3,  3,  3,  5, 22, 20, 21, 22, 20,  8,  1,  1,  1,  1,  1,  1,  1,  1,  1, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 53, 23, 20,  6,  3,  3,  3,
  3,  3,  3,  3,  5, 22, 20, 21, 22, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,  3, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 53, 23, 20,  6,  3,  3,  3,
  3,  3,  3,  3,  5, 22, 20, 21, 22, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,  3, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 53, 23, 20,  6,  3,  3,  3,
  3,  3,  3,  3,  5, 22, 20, 21, 22, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,  3, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 53, 23, 20,  6,  3,  3,  3,
  3,  3,  3,  3,  5, 22, 20, 21, 22, 20,  6,  3,  3,  3,  3,  3,  3,  3,  3,  3, 21, 21, 21, 21, 21, 22, 53, 20, 21, 21, 21, 21, 22, 53, 33, 20,  6,  3,  3,  3


};

const int SupLayer[60][40] = {

//도쿄, 서울, 오사카,쿄토
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,170,171,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,188,189,164,165,  0,  0,  0,180,181,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 80, 81, 74, 75,  0,  0,  0,190,191,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 50, 51,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,157,158,159,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 67, 68, 69,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,140,141,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,176,177,  0,  0,  0,150,151,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,154,155,156,202,203,186,187,  0,  0,  0,160,161,  0,  0,  0,  0,  0,  0,  0, 20, 20, 20, 20, 20, 20, 20,  0, 20, 20, 20, 20, 20, 20,  0, 20, 20, 20, 20, 20,
  0, 64, 65, 66,210,211, 72, 73,  0,  0,  0, 40, 41,  0,  0,  0,  0,147,148,149,  0,  0,  0,  0,  0,  0, 20,  0, 20,  0,  0,  0,  0, 20,  0, 20,  0,  0,  0,  0,
  0,  0,  0,  0,212,213,174,175,  0,  0,  0,  0,  0,  0,  0,  0,  0, 47, 48, 49, 20, 20, 20, 20, 20, 20, 20,  0, 20, 20, 20, 20, 20, 20,  0, 20, 20, 20, 20, 20,
  0,  0,  0,  0, 60, 61, 70, 71,  0,  0,  0,  0,  0,  0,  0,  0,  0, 57, 58, 59,  0,  0,  0,  0,202,203,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,210,211,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,162,163,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,212,213,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,172,173,  0,
  0,  0,  0,  0,  0,  0,  0, 21,  0,  0,  0,  0,  0,  0,  0,  0,142,143,  0,  0,  0,  0,  0,  0, 60, 61,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 62, 63,  0,
  0,144,145,146,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 42, 43,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0, 44, 45, 46,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 84, 85, 86,  0,  0,  0,166,167,  0,  0,  0,  0,  0,  0,168,169,  0,
  0, 54, 55, 56,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 94, 95, 96,  0,  0,  0, 76, 77,  0,  0,  0,  0,  0,  0, 78, 79,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,104,105,106,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,152,153,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0, 52, 53,  0,  0,  0,  0,  0,  0,  0,  0, 21,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,125,126,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,200,201,  0,  0,  0, 26, 27,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,200,201,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,212,213,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,212,213,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,210,211,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,210,211,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 60, 61,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 60, 61,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,136,137,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 36, 37,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 21,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
 20, 20, 20, 20, 20, 20, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
//후쿠오카, 오키나와
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,130,131,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 30, 31,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 21,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20, 20, 20, 20, 20, 20, 20, 20, 20,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,200,201,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
 20, 20, 20, 20, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,210,211,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0, 21,  0,  0,  0,  0,  0,  0, 60, 61,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,200,201,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,210,211,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 60, 61,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20, 20, 20, 20,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0,
  0,  0,  0,  0, 20,  0,  0,  0,  0,  0, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20,  0,  0,  0


};




int EventLayer[60][40] = {

0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0


};