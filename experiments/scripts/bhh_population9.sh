export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,13' >>tracking/progress/bhh_population.txt
