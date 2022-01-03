export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --dataset=iris --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,iris,true,1' >> bhh_normalise.txt
python bhh.py --dataset=abalone --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,abalone,true,1' >> bhh_normalise.txt
python bhh.py --dataset=housing --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,housing,true,1' >> bhh_normalise.txt
python bhh.py --dataset=forest_fires --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,forest_fires,true,1' >> bhh_normalise.txt
python bhh.py --dataset=fish_toxicity --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,fish_toxicity,true,1' >> bhh_normalise.txt
python bhh.py --dataset=student_performance --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,student_performance,true,1' >> bhh_normalise.txt
python bhh.py --dataset=car --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,car,true,1' >> bhh_normalise.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,parkinsons,true,1' >> bhh_normalise.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,wine_quality,true,1' >> bhh_normalise.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,mushroom,true,1' >> bhh_normalise.txt
python bhh.py --dataset=air_quality --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,air_quality,true,1' >> bhh_normalise.txt
python bhh.py --dataset=adult --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,adult,true,1' >> bhh_normalise.txt
python bhh.py --dataset=bike --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,bike,true,1' >> bhh_normalise.txt
python bhh.py --dataset=bank --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,bank,true,1' >> bhh_normalise.txt
python bhh.py --dataset=diabetic --seed=1 --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise
echo 'bhh_normalise,diabetic,true,1' >> bhh_normalise.txt
