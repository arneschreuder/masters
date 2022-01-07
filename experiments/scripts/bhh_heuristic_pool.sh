export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,29' >>tracking/progress/bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,30' >>tracking/progress/bhh_heuristic_pool.txt
