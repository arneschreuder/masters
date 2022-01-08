export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,18' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,19' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,20' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,21' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,22' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,23' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,24' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,25' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,26' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,27' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,28' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,29' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,30' >>tracking/progress/bhh_reanalysis.txt
