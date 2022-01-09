export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
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
