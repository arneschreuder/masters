export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,iris,1,1' >> bhh_replay.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,iris,5,1' >> bhh_replay.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,iris,15,1' >> bhh_replay.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,iris,20,1' >> bhh_replay.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,fish_toxicity,1,1' >> bhh_replay.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,fish_toxicity,5,1' >> bhh_replay.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,fish_toxicity,15,1' >> bhh_replay.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,fish_toxicity,20,1' >> bhh_replay.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,abalone,1,1' >> bhh_replay.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,abalone,5,1' >> bhh_replay.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,abalone,15,1' >> bhh_replay.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,abalone,20,1' >> bhh_replay.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,air_quality,1,1' >> bhh_replay.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,air_quality,5,1' >> bhh_replay.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,air_quality,15,1' >> bhh_replay.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,air_quality,20,1' >> bhh_replay.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,housing,1,1' >> bhh_replay.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,housing,5,1' >> bhh_replay.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,housing,15,1' >> bhh_replay.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,housing,20,1' >> bhh_replay.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,wine_quality,1,1' >> bhh_replay.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,wine_quality,5,1' >> bhh_replay.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,wine_quality,15,1' >> bhh_replay.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,wine_quality,20,1' >> bhh_replay.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,car,1,1' >> bhh_replay.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,car,5,1' >> bhh_replay.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,car,15,1' >> bhh_replay.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,car,20,1' >> bhh_replay.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,parkinsons,1,1' >> bhh_replay.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,parkinsons,5,1' >> bhh_replay.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,parkinsons,15,1' >> bhh_replay.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,parkinsons,20,1' >> bhh_replay.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,forest_fires,1,1' >> bhh_replay.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,forest_fires,5,1' >> bhh_replay.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,forest_fires,15,1' >> bhh_replay.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,forest_fires,20,1' >> bhh_replay.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,1,1' >> bhh_replay.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,5,1' >> bhh_replay.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,15,1' >> bhh_replay.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bank,20,1' >> bhh_replay.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,1,1' >> bhh_replay.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,5,1' >> bhh_replay.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,15,1' >> bhh_replay.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,bike,20,1' >> bhh_replay.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,student_performance,1,1' >> bhh_replay.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,student_performance,5,1' >> bhh_replay.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,student_performance,15,1' >> bhh_replay.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,student_performance,20,1' >> bhh_replay.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,adult,1,1' >> bhh_replay.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,adult,5,1' >> bhh_replay.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,adult,15,1' >> bhh_replay.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,adult,20,1' >> bhh_replay.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,mushroom,1,1' >> bhh_replay.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,mushroom,5,1' >> bhh_replay.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,mushroom,15,1' >> bhh_replay.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,mushroom,20,1' >> bhh_replay.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=1 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,diabetic,1,1' >> bhh_replay.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=5 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,diabetic,5,1' >> bhh_replay.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=15 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,diabetic,15,1' >> bhh_replay.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=20 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_replay,diabetic,20,1' >> bhh_replay.txt
