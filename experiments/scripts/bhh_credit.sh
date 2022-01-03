export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,iris,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,iris,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,iris,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,iris,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,fish_toxicity,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,fish_toxicity,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,fish_toxicity,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,fish_toxicity,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,abalone,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,abalone,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,abalone,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,abalone,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,air_quality,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,air_quality,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,air_quality,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,air_quality,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,housing,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,housing,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,housing,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,housing,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,wine_quality,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,wine_quality,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,wine_quality,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,wine_quality,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,car,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,car,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,car,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,car,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,parkinsons,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,parkinsons,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,parkinsons,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,parkinsons,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,forest_fires,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,forest_fires,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,forest_fires,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,forest_fires,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bank,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bank,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bank,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bank,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,bike,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,bike,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,bike,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,bike,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,student_performance,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,student_performance,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,student_performance,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,student_performance,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,adult,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,adult,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,adult,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,adult,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,mushroom,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,mushroom,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,mushroom,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,mushroom,symmetric,1' >> bhh_credit.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=pbest
echo 'bhh_credit,diabetic,pbest,1' >> bhh_credit.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=rbest
echo 'bhh_credit,diabetic,rbest,1' >> bhh_credit.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
echo 'bhh_credit,diabetic,gbest,1' >> bhh_credit.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=symmetric
echo 'bhh_credit,diabetic,symmetric,1' >> bhh_credit.txt
