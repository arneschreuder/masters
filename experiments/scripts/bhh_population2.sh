export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,11' >>tracking/progress/bhh_population.txt
