export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

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
python bhh.py --dataset=adult --seed=3 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=4 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=5 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=6 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=7 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=8 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
