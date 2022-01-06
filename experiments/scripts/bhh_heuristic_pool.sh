export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=bank --seed=30 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,gd,30' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,1' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,2' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,3' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,4' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,5' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,6' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,7' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,8' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,9' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,10' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,11' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,12' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,13' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,14' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,15' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,16' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,17' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,18' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,19' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,20' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,21' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,22' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,23' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,24' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,25' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,26' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,27' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,28' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,29' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,30' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,1' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,2' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,3' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,4' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,5' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,6' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,7' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,8' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,9' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,10' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,11' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,12' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,13' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,14' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,15' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,16' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,17' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,18' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,19' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,20' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,21' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,22' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,23' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,24' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,25' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,26' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,27' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,28' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,29' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,30' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,1' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,2' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,3' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,4' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,5' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,6' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,7' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,8' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,9' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,10' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,11' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,12' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,13' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,14' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,15' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,16' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,17' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,18' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,19' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,20' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,21' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,22' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,23' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,24' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,25' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,26' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,27' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,28' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,29' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,30' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,1' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,2' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,3' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,4' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,5' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,6' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,7' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,8' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,9' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,10' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,11' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,12' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,13' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,14' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,15' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,16' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,17' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,18' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,19' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,20' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,21' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,22' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,23' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,24' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,25' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,26' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,27' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,28' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,29' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,30' >>tracking/progress/bhh_heuristic_pool.txt
