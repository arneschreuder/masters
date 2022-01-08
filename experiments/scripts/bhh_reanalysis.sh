export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bank,15,24' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bank,15,25' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bank,15,26' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bank,15,27' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bank,15,28' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bank,15,29' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bank,15,30' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,1' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,2' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,3' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,4' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,5' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,6' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,7' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,8' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,9' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,10' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,11' >>tracking/progress/bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,12' >>tracking/progress/bhh_reanalysis.txt
