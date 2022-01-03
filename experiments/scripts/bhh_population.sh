export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,iris,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,iris,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,iris,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,iris,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,abalone,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,abalone,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,abalone,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,abalone,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,housing,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,housing,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,housing,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,housing,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,forest_fires,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,forest_fires,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,forest_fires,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,forest_fires,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,fish_toxicity,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,fish_toxicity,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,fish_toxicity,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,fish_toxicity,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,student_performance,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,student_performance,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,student_performance,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,student_performance,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,car,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,car,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,car,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,car,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,air_quality,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,air_quality,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,air_quality,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,air_quality,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,adult,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bike,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bank,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bank,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bank,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,bank,25,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,10,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,15,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,20,1' >> tracking/progress/bhh_population.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,diabetic,25,1' >> tracking/progress/bhh_population.txt
