
% THE CODE INSIDE THE COMMENTS IS THE DESIGN PROCESS.
% THE CODE NOT IN COMMENTS IS THE FINAL DESIGN.
% PRESS RUN TO GET FINAL RESPONSE


g=tf([100],[1 13 40])
% cl=feedback(g,1)

% step(cl)
% hold all
k=tf([19.6],[1])
gk=g*k
% cl1=feedback(gk,1)

% step(cl1)
% bode(gk)
% hold all
% % FIRST LEAD COMPENSATOR DESIGN ITERATIONS

% phi_degrees=[48:1:60]
% phi=phi_degrees*pi/180
% 
% for n=1:1:12
%     a2= (1+sin(phi(n)))/(1-sin(phi(n)))
%     tau= 1/(43.8*sqrt(a2))
%     lead=tf([a2*tau 1],[tau 1])
%     gklead=series(gk,lead)
%     hold all
%     bode(gklead)
% end

%     phi_degrees=60
%     phi=phi_degrees*pi/180
% 
%     a2= (1+sin(phi))/(1-sin(phi))
%     tau= 1/(43.8*sqrt(a2))
%     lead=tf([a2*tau 1],[tau 1])
%     gklead=series(gk,lead)
%     hold all
%     bode(gklead)
% 
lead1=tf([0.08521 1],[0.006118 1])
gklead1=series(gk,lead1)

% bode(gklead1)
% cl2=feedback(gklead1,1)
% step(cl2)

% SECOND LEAD COMP DESIGN ITERATIONS

% phi_degrees=[21:1:35]
% phi=phi_degrees*pi/180
% 
% for n=1:1:15
%     a2= (1+sin(phi(n)))/(1-sin(phi(n)))
%     tau= 1/(126*sqrt(a2))
%     lead2=tf([a2*tau 1],[tau 1])
%     gkleadlead2=series(gklead,lead2)
%     hold all
%     bode(gkleadlead2)
% end
% 
%     phi_degrees=35
%     phi=phi_degrees*pi/180
% 
%     a2= (1+sin(phi))/(1-sin(phi))
%     tau= 1/(126*sqrt(a2))
%     lead2=tf([a2*tau 1],[tau 1])
%     gkleadlead2=series(gklead,lead2)
%     hold all
%     bode(gkleadlead2)

lead2=tf([0.0152 1],[0.0041 1])
gklead1lead2=series(gklead1,lead2)

    
    cl3=feedback(gklead1lead2,1)
    step(cl3)