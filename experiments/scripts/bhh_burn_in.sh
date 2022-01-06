export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,30' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,1' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,2' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,3' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,4' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,5' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,6' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,7' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,8' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,9' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,10' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,11' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,12' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,13' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,14' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,15' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,16' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,17' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,18' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,19' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,20' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,21' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,22' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,23' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,24' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,25' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,26' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,27' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,28' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,29' >>tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,30' >>tracking/progress/bhh_burn_in.txt
