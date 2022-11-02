
close all
clear all
clc


tend = 100; 

 k12 = 870; %per sec
 k23 = 1000;
 k34 = 13.10;
 k45 = 1000;
 k56 = 870;
 k67 = 1000;
 k78 = 13.10;
 k81 = 1000;
 k01 = 100;
 k30 = 100;
 k40 = 100;


t(1) = 0;
p1(1) = 1000;
p2(1) = 0;
p3(1) = 0;
p4(1) = 0;
p5(1) = 0;
p6(1) = 0;
p7(1) = 0;
p8(1) = 0;
p9(1) = 0;
i = 1;              


while t(end)< tend
   
    rates = zeros(1,18);
    rates(1) = p8(i)*k81 + p9(i)*k01;
    rates(2) = p1(i)*k12;
    
    rates(3) = p1(i)*k12;
    rates(4) = p2(i)*k23;
    
    rates(5) = p2(i)*k23;
    rates(6) = p3(i)*(k34 + k30);
    
    rates(7) = p3(i)*k34;
    rates(8) = p4(i)*(k45 + k40);
    
    rates(9) = p4(i)*k45;
    rates(10) = p5(i)*k56;
    
    rates(11) = p5(i)*k56;
    rates(12) = p6(i)*k67;
    
    rates(13) = p6(i)*k67;
    rates(14) = p7(i)*k78;
    
    rates(15) = p7(i)*k78;
    rates(16) = p8(i)*k81;
    
    rates(17) = p4(i)*k40 + p3(i)*k30;
    rates(18) = p9(i)*k01;
    
    rate_sum = sum(rates);
    
    
    r1 = rand(1);
    tau = (1/rate_sum)*log(1/r1);
    
    t(i+1) = t(i) + tau;
    
    
    r2 = rand(1);
    
    if r2*rate_sum <= rates(1)
        p1(i+1) = p1(i) + 1;
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
               
        
    elseif r2 * rate_sum > rates(1) && r2 * rate_sum <= rates(1) + rates(2)
        p1(i+1) = p1(i) - 1;
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
        
    elseif r2 * rate_sum > rates(1) + rates(2) && r2 * rate_sum <= rates(1) + rates(2) + rates(3)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i) + 1;
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
        
    elseif r2 * rate_sum > rates(1) + rates(2) + rates(3)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i) - 1;
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
   
    elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i) + 1;
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
        
    elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i) - 1;
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
        
    elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i) + 1;
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
        
    elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i) - 1;
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
        
    elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i) + 1;
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
        
    elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9)  && r2 * rate_sum <=  rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10)
       p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i) - 1;
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
        
    elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i) + 1;
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
     
     elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i) - 1;
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
     
      elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i) + 1;
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
     
      elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i) - 1;
        p8(i+1) = p8(i);
        p9(i+1) = p9(i);
     
      elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14) + rates(15)
         p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i) + 1;
        p9(i+1) = p9(i);
     
      elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14) + rates(15)  && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14) + rates(15) + rates(16)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i) - 1;
        p9(i+1) = p9(i);
     
       elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14) + rates(15) + rates(16) && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14) + rates(15) + rates(16) + rates(17)
         p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i) + 1;
       
      elseif r2 * rate_sum > rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14) + rates(15) + rates(16) + rates(17) && r2 * rate_sum <= rates(1) + rates(2) + rates(3) + rates(4) + rates(5) + rates(6) + rates(7) + rates(8) + rates(9) + rates(10) + rates(11) + rates(12) + rates(13) + rates(14) + rates(15) + rates(16) + rates(17) + rates(18)
        p1(i+1) = p1(i);
        p2(i+1) = p2(i);
        p3(i+1) = p3(i);
        p4(i+1) = p4(i);
        p5(i+1) = p5(i);
        p6(i+1) = p6(i);
        p7(i+1) = p7(i);
        p8(i+1) = p8(i);
        p9(i+1) = p9(i) - 1;
        
      end
    
    
        i = i + 1;
    
end                 

figure(1)
plot(t, p1)
hold on
plot(t, p2)
plot(t, p3)
plot(t, p4)
plot(t, p5)
plot(t, p6)
plot(t, p7)
plot(t, p8)
plot(t, p9)
hold off
grid 

legend('p1','p2','p3','p4','p5','p6','p7','p8','p9')

figure(2) 
subplot(9,1,1);
plot(t,p1)
grid
subplot(9,1,2);
plot(t,p2)
grid
subplot(9,1,3);
plot(t,p3)
grid
subplot(9,1,4);
plot(t,p4)
grid
subplot(9,1,5);
plot(t,p5)
grid
subplot(9,1,6);
plot(t,p6)
grid
subplot(9,1,7);
plot(t,p7)
grid
subplot(9,1,8);
plot(t,p8)
grid
subplot(9,1,9);
plot(t,p9)
grid

