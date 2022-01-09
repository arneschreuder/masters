export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
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
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,30' >>tracking/progress/bhh_population.txt
