% THE CODE INSIDE THE COMMENTS IS THE DESIGN PROCESS.
% THE CODE NOT IN COMMENTS IS THE FINAL DESIGN.
% PRESS RUN TO GET FINAL RESPONSE



g=tf([100],[1 13 40])

% lead=tf([1 63],[1 409.500])
% glead=series(g,lead)

% for n=0:1:50
%     c1=tf([1 63-n],[1 409.500])
%     k=tf([613],[1])
%     gc1=series(g,c1)
%     gc1k=series(gc1,k)
%     cl=feedback(gc1k,1)
%     hold all
%     step(cl)
% end



% rlocus(g)
% hold all
% rlocus(glead)
k=tf([613],[1])
% gleadk=series(glead,k)
% closedloop=feedback(gleadk,1)
% step(closedloop)

newlead=tf([1 17],[1 409.500])

gnewlead=series(g,newlead)
gnewleadk=series(gnewlead,k)
% closedloop=feedback(gnewleadk,1)
% step(closedloop)

lag=tf([1 0.1],[1 0.0256])
gnewleadlagk=series(gnewleadk,lag)
closedloop=feedback(gnewleadlagk,1)
step(closedloop)

% rl1=series(g,newlead)
% rl2=series(rl1,lag)
% rlocus(rl2)

% x=[-300:1:300];
% y=tan(133.63*pi/180)*x;
% plot(x,y)
% hold all
% z=sqrt(90^2-x.^2);
% plot(x,z)