export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo "python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest" >>tracking/progress/again.txt
