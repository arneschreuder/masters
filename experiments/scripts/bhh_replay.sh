export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,adult,20,29' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,adult,20,30' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,1' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,2' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,3' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,4' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,5' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,6' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,7' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,8' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,9' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,10' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,11' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,12' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,13' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,14' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,15' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,16' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,17' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,18' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,19' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,20' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,21' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,22' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,23' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,24' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,25' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,26' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,27' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,28' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,29' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,30' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,1' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,2' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,3' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,4' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,5' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,6' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,7' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,8' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,9' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,10' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,11' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,12' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,13' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,14' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,15' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,16' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,17' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,18' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,19' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,20' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,21' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,22' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,23' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,24' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,25' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,26' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,27' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,28' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,29' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,30' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,1' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,2' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,3' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,4' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,5' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,6' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,7' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,8' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,9' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,10' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,11' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,12' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,13' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,14' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,15' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,16' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,17' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,18' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,19' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,20' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,21' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,22' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,23' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,24' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,25' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,26' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,27' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,28' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,29' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,30' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,1' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,2' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,3' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,4' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,5' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,6' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,7' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,8' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,9' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,10' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,11' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,12' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,13' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,14' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,15' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,16' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,17' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,18' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,19' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,20' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,21' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,22' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,23' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,24' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,25' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,26' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,27' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,28' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,29' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,30' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,1' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,2' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,3' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,4' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,5' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,6' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,7' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,8' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,9' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,10' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,11' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,12' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,13' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,14' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,15' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,16' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,17' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,18' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,19' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,20' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,21' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,22' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,23' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,24' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,25' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,26' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,27' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,28' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,29' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,30' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,1' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,2' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,3' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,4' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,5' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,6' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,7' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,8' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,9' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,10' >>tracking/progress/bhh_replay.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,11' >>tracking/progress/bhh_replay.txt
