export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=adult --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,22' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,23' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,24' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,25' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,26' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,27' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,28' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,29' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,30' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,1' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,2' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,3' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,4' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,5' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,6' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,7' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,8' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,9' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,10' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,11' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,12' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,13' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,14' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,15' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,16' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,17' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,18' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,19' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,20' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,21' >>tracking/progress/bhh_credit.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,22' >>tracking/progress/bhh_credit.txt
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
