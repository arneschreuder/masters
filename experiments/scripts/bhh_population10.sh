export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,26' >>tracking/progress/bhh_population.txt
