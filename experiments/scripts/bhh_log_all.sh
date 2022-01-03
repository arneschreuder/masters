export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=2
python bhh.py --dataset=iris --seed=101 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_log_all,iris,101' >> tracking/progress/bhh_log_all.txt
