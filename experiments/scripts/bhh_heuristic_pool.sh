export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,iris,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=iris --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,iris,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=iris --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,iris,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,fish_toxicity,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,fish_toxicity,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,fish_toxicity,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=abalone --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,abalone,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=abalone --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,abalone,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=abalone --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,abalone,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,air_quality,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,air_quality,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,air_quality,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=housing --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,housing,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=housing --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,housing,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=housing --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,housing,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,wine_quality,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,wine_quality,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,wine_quality,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=car --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,car,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=car --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,car,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=car --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,car,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,parkinsons,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,parkinsons,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,parkinsons,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,forest_fires,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,forest_fires,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,forest_fires,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=bank --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bank,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bike,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bike,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=bike --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,bike,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,student_performance,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,student_performance,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,student_performance,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,adult,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,adult,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=adult --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,adult,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,mushroom,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,mushroom,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,mushroom,mh,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,all,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=gd --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,gd,1' >> bhh_heuristic_pool.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic-pool=mh --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_heuristic_pool,diabetic,mh,1' >> bhh_heuristic_pool.txt
