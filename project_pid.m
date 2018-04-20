% THE CODE INSIDE THE COMMENTS IS THE DESIGN PROCESS.
% THE CODE NOT IN COMMENTS IS THE FINAL DESIGN.
% PRESS RUN TO GET FINAL RESPONSE




g=tf([100],[1 13 40])

% for n=2:0.1:4
% 
% kp=80.6
% ki=0.1
% kd=n
% 
% pcomp=tf([kp],[1])
% icomp=tf([ki],[1 0])
% dcomp=tf([kd 1],[1])
% 
% pi=parallel(pcomp,icomp)
% pid=parallel(pi,dcomp)
% 
% gpid=series(g,pid)
% cl=feedback(gpid,1)
% 
% hold all
% step(cl)
% 
% end

kp=80.6
ki=0.1
kd=2.5

pcomp=tf([kp],[1])
icomp=tf([ki],[1 0])
dcomp=tf([kd 1],[1])

pi=parallel(pcomp,icomp)
pid=parallel(pi,dcomp)

gpid=series(g,pid)
cl=feedback(gpid,1)

hold all
step(cl)
