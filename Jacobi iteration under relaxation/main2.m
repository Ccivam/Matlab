a=[6 ,-7 ,1 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 , 0 ,0;
  -4, 5, -4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 0;
   1, -4, 6, -4, 1, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0;
   0, 1, -4, 6, -4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0;
   0, 0, 1, -4, 6, -4, 1, 0, 0, 0, 0, 0, 0, 0, 0;
   0, 0, 0, 1, -4, 6, -4, 1, 0, 0, 0, 0, 0, 0, 0;
   0, 0, 0, 0, 1, -4, 6, -4, 1, 0, 0, 0, 0, 0, 0;
   0, 0, 0, 0, 0, 1, -4, 6, -4, 1, 0, 0, 0, 0, 0;
   0, 0, 0, 0, 0, 0, 1, -4, 6, -4, 1, 0, 0, 0, 0;
   0, 0, 0, 0, 0, 0, 0, 1, -4, 6, -4, 1, 0, 0, 0;
   0, 0, 0, 0, 0, 0, 0, 0, 1, -4, 6, -4, 1, 0, 0;
   0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -4, 6, -4, 1, 0;
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -4, 6, -4, 1;
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -4, 5, -4;
   0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 5, 1, 3, -2,  2;
];
b=[30;30;30;30;30;30;30;30;30;30;30;30;30;30;30];
n=length(b);
x=solver2(a,b,n)
plot(x);