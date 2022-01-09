export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,15,25' >>tracking/progress/bhh_population.txt
