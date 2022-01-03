export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,iris,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,iris,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,iris,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,iris,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,abalone,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,abalone,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,abalone,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,abalone,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,housing,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,housing,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,housing,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,housing,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,forest_fires,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,forest_fires,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,forest_fires,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,forest_fires,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,fish_toxicity,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,fish_toxicity,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,fish_toxicity,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,fish_toxicity,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,student_performance,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,student_performance,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,student_performance,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,student_performance,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,car,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,car,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,car,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,car,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,parkinsons,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,parkinsons,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,parkinsons,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,parkinsons,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,wine_quality,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,wine_quality,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,wine_quality,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,wine_quality,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,mushroom,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,mushroom,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,mushroom,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,mushroom,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,air_quality,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,air_quality,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,air_quality,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,air_quality,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,adult,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,adult,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,adult,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,adult,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,bike,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,bike,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bike,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bike,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,bank,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,bank,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,bank,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,bank,20,1' >> bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=1 --credit=ibest
echo 'bhh_reanalysis,diabetic,1,1' >> bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=5 --credit=ibest
echo 'bhh_reanalysis,diabetic,5,1' >> bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=15 --credit=ibest
echo 'bhh_reanalysis,diabetic,15,1' >> bhh_reanalysis.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=20 --credit=ibest
echo 'bhh_reanalysis,diabetic,20,1' >> bhh_reanalysis.txt
