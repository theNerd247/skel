# data anaylsis code goes here
# use: 
# 	load "<+file name+>";
# 	dlmread("<+filename+>","<+delim+>");
# to read in datafiles

midSpanDefs_raw = csvread('tables/midspan.csv');
Es_e = (csvread('tables/strain.csv'))*-1;

function i = areaMoment(w,h,y)
 	A = y.*w;
	yA = A.*y;
	Y = sum(yA)/sum(A);

	Ad2 = A.*(y-Y).*(y-Y);
	i = sum(A.*h.*h/12+Ad2);
end

function d = deforation(P,L,E,I)
	d = P*(L^3/(48*E*I));
end

function s = strain(P,L,r,I,E)
	M = P.*L/2
	s = M.*r/(I*E)
end

b_f = 3.375;
t_w = 0.232;
t_f = 0.359;
d = 6;

E = 1e7;
L = 140;

w = [b_f,t_w,b_f];
h = [t_f,d-2*t_f,t_f];
y = [t_f/2,d/2,d-t_f/2];
rs = [3,1.5,0,-1.5,-3,3,0,-3];
ls = [L/2,L/2,L/2,L/2,L/2,20,20,20];

I = areaMoment(w,h,y);

Ps = midSpanDefs_raw(:,1);
Ys_e = midSpanDefs_raw(:,2);

Ys_t = deforation(Ps,L,E,I);
Ys_ratio = Ys_e./Ys_t;

Es_t = strain(Ps,ls,rs,I,E)*10^6;

graph = [rot90(Es_e),rot90(Es_t),rot90(rs)];
dlf_table = [Ps,Ys_e,Ys_t,Ys_ratio];
str_e_table= [Ps,Es_e];
str_t_table= [Ps,Es_t];

dlmwrite("tables/graph.csv",graph,"delimiter",",","precision",3);
dlmwrite("tables/dlf_table.csv",dlf_table,"delimiter",",","precision",3);
dlmwrite("tables/str_e_table.csv",str_e_table,"delimiter",",","precision",3);
dlmwrite("tables/str_t_table.csv",str_t_table,"delimiter",",","precision",3);
