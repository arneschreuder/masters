export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
echo 'bhh_population,adult,25,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=9 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=10 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=11 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=12 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=13 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=14 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,15,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,15,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,15,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,15,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,15,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,20,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,20,2' >>tracking/progress/bhh_population.txt
