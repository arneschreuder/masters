export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=iris --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,iris,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,abalone,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,housing,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,forest_fires,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,fish_toxicity,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,student_performance,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,car,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,parkinsons,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,wine_quality,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,mushroom,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,air_quality,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,adult,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bike,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,bank,true,30' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,1' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=2 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,2' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=3 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,3' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=4 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,4' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=5 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,5' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=6 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,6' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=7 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,7' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=8 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,8' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=9 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,9' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=10 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,10' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=11 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,11' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=12 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,12' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=13 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,13' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=14 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,14' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=15 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,15' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=16 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,16' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=17 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,17' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=18 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,18' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=19 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,19' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=20 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,20' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=21 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,21' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=22 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,22' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=23 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,23' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=24 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,24' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=25 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,25' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=26 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,26' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=27 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,27' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=28 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,28' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=29 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,29' >> tracking/progress/bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=30 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards=true
echo 'bhh_discounted_rewards,diabetic,true,30' >> tracking/progress/bhh_discounted_rewards.txt
