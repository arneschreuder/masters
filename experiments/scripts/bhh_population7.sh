export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

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
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bank,20,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bank,20,30' >>tracking/progress/bhh_population.txt
