export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,iris,1,1' >> bhh_reselection.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,iris,5,1' >> bhh_reselection.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,iris,15,1' >> bhh_reselection.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,iris,20,1' >> bhh_reselection.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,fish_toxicity,1,1' >> bhh_reselection.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,fish_toxicity,5,1' >> bhh_reselection.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,fish_toxicity,15,1' >> bhh_reselection.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,fish_toxicity,20,1' >> bhh_reselection.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,abalone,1,1' >> bhh_reselection.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,abalone,5,1' >> bhh_reselection.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,abalone,15,1' >> bhh_reselection.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,abalone,20,1' >> bhh_reselection.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,air_quality,1,1' >> bhh_reselection.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,air_quality,5,1' >> bhh_reselection.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,air_quality,15,1' >> bhh_reselection.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,air_quality,20,1' >> bhh_reselection.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,housing,1,1' >> bhh_reselection.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,housing,5,1' >> bhh_reselection.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,housing,15,1' >> bhh_reselection.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,housing,20,1' >> bhh_reselection.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,wine_quality,1,1' >> bhh_reselection.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,wine_quality,5,1' >> bhh_reselection.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,wine_quality,15,1' >> bhh_reselection.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,wine_quality,20,1' >> bhh_reselection.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,car,1,1' >> bhh_reselection.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,car,5,1' >> bhh_reselection.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,car,15,1' >> bhh_reselection.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,car,20,1' >> bhh_reselection.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,parkinsons,1,1' >> bhh_reselection.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,parkinsons,5,1' >> bhh_reselection.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,parkinsons,15,1' >> bhh_reselection.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,parkinsons,20,1' >> bhh_reselection.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,forest_fires,1,1' >> bhh_reselection.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,forest_fires,5,1' >> bhh_reselection.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,forest_fires,15,1' >> bhh_reselection.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,forest_fires,20,1' >> bhh_reselection.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,bank,1,1' >> bhh_reselection.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,bank,5,1' >> bhh_reselection.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,bank,15,1' >> bhh_reselection.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,bank,20,1' >> bhh_reselection.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,bike,1,1' >> bhh_reselection.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,bike,5,1' >> bhh_reselection.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,bike,15,1' >> bhh_reselection.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,bike,20,1' >> bhh_reselection.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,student_performance,1,1' >> bhh_reselection.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,student_performance,5,1' >> bhh_reselection.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,student_performance,15,1' >> bhh_reselection.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,student_performance,20,1' >> bhh_reselection.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,adult,1,1' >> bhh_reselection.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,adult,5,1' >> bhh_reselection.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,adult,15,1' >> bhh_reselection.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,adult,20,1' >> bhh_reselection.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,mushroom,1,1' >> bhh_reselection.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,mushroom,5,1' >> bhh_reselection.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,mushroom,15,1' >> bhh_reselection.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,mushroom,20,1' >> bhh_reselection.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,diabetic,1,1' >> bhh_reselection.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=5 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,diabetic,5,1' >> bhh_reselection.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=15 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,diabetic,15,1' >> bhh_reselection.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=20 --reanalysis=10 --credit=ibest
echo 'bhh_reselection,diabetic,20,1' >> bhh_reselection.txt
