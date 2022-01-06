export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=air_quality --seed=28 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,air_quality,25,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=air_quality --seed=29 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,air_quality,25,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=air_quality --seed=30 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,air_quality,25,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=2 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=3 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=4 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=5 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=6 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=7 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=8 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=9 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=10 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=11 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=12 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=13 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=14 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=15 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=16 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=17 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=18 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=19 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=20 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=21 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=22 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=23 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=24 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=25 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=26 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=27 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=28 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=2 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=3 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=4 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=5 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=6 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=7 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=8 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=9 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=10 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=11 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=12 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=13 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=14 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=15 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=16 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=17 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=18 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=19 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=20 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=21 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=22 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=23 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=24 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=25 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=26 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=27 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=28 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=2 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=3 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=4 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=5 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=6 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=7 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=8 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=9 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=10 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=11 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=12 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=13 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=14 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=15 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=16 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=17 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=18 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=19 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=20 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=21 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=22 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=23 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=24 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=25 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=26 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=27 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=28 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=2 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,2' >>tracking/progress/bhh_population.txt
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
python bhh.py --dataset=adult --seed=15 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=16 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=17 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=18 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=19 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=20 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=21 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=22 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=23 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=24 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=25 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=26 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=27 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=28 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,28' >>tracking/progress/bhh_population.txt
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
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,23' >>tracking/progress/bhh_population.txt
