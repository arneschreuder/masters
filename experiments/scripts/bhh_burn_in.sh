export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,iris,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,iris,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,iris,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,iris,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,abalone,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,abalone,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,abalone,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,abalone,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,housing,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,housing,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,housing,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,housing,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,forest_fires,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,forest_fires,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,forest_fires,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,forest_fires,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,fish_toxicity,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,fish_toxicity,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,fish_toxicity,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,fish_toxicity,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,student_performance,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,student_performance,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,student_performance,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,student_performance,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,car,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,car,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,car,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,car,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,parkinsons,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,parkinsons,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,parkinsons,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,parkinsons,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,wine_quality,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,wine_quality,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,wine_quality,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,wine_quality,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,mushroom,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,mushroom,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,mushroom,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,mushroom,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,air_quality,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,air_quality,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,air_quality,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,air_quality,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,adult,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,adult,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,adult,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,adult,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bike,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,bank,20,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=5 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,5,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,10,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=15 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,15,1' >> tracking/progress/bhh_burn_in.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=20 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_burn_in,diabetic,20,1' >> tracking/progress/bhh_burn_in.txt
