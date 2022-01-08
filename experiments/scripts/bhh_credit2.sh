export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,30' >>tracking/progress/bhh_credit.txt
