# plotting code goes here

set yrange [-5:5]
set key on at -0.5,4 box
set datafile separator ","

fit a*x+b "tables/graph.csv" using 1:7 via a,b
fit c*x+d "tables/graph.csv" using 2:7 via c,d
fit e*x+f "tables/graph.csv" using 3:7 via e,f
fit g*x+h "tables/graph.csv" using 4:7 via g,h
fit i*x+j "tables/graph.csv" using 5:7 via i,j
fit k*x+l "tables/graph.csv" using 6:7 via k,l


set xlabel 'Strain ($\times10^{-6}$)'
set ylabel 'Distance (in)'

set term epslatex color 
set output 'graphs/graph1.tex'
plot "tables/graph.csv" using 1:7 title 'Experimental', a*x+b title 'Experimental',\
'' using 4:7 title 'Theoretical', g*x+h title 'Theoretical'

set term epslatex color 
set output 'graphs/graph2.tex'
plot "tables/graph.csv" using 2:7 title 'Experimental', c*x+d title 'Experimental',\
'' using 4:7 title 'Theoretical', i*x+j title 'Theoretical'

set term epslatex color 
set key on at 130,-2 box
set output 'graphs/graph3.tex'
plot "tables/graph.csv" using 3:7 title 'Experimental', e*x+f title 'Experimental',\
'' using 6:7 title 'Theoretical', k*x+l title 'Theoretical'
