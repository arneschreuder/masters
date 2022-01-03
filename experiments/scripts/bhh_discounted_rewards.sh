export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,iris,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,abalone,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,housing,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,forest_fires,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,fish_toxicity,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,student_performance,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,car,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,parkinsons,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,wine_quality,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,mushroom,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,air_quality,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,adult,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,bike,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,bank,true,1' >> bhh_discounted_rewards.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards
echo 'bhh_discounted_rewards,diabetic,true,1' >> bhh_discounted_rewards.txt
