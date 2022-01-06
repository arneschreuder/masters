export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python bhh.py --dataset=parkinsons --seed=19 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=20 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=21 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=22 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=23 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=24 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=25 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=26 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=27 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=28 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=29 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=30 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,20,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=1 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=2 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=3 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=4 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=5 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=6 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=7 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=8 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=9 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=10 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=11 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=12 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=13 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=14 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=15 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=16 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=17 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=18 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=19 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=20 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=21 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=22 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=23 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=24 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=25 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=26 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=27 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=28 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=29 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=parkinsons --seed=30 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,parkinsons,25,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=2 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=3 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=4 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=5 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=6 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=7 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=8 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=9 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=10 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=11 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=12 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=13 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=14 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=15 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=16 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=17 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=18 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=19 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=20 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=21 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=22 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=23 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=24 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=25 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=26 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=27 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=28 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=29 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=30 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,10,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=2 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=3 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=4 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=5 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=6 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=7 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=8 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=9 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=10 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=11 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=12 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=13 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=14 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=15 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=16 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=17 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=18 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=19 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=20 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=21 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=22 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=23 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=24 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=25 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=26 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=27 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=28 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=29 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=30 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,15,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=2 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=3 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=4 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=5 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=6 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=7 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=8 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=9 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=10 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=11 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=12 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=13 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=14 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=15 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=16 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=17 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=18 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=19 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=20 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=21 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=22 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=23 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=24 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=25 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=26 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=27 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=28 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=29 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=30 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,20,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=1 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=2 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=3 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=4 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=5 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=6 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=7 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=8 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=9 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=10 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=11 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=12 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=13 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=14 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=15 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=16 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=17 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=18 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=19 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=20 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=21 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=22 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=23 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=24 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=25 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=26 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=27 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=28 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=29 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=wine_quality --seed=30 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,wine_quality,25,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=2 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=3 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=4 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=5 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=6 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=7 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=8 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=9 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=10 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=11 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=12 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=13 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=14 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=15 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=16 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=17 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=18 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=19 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=20 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=21 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=22 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=23 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=24 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=25 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=26 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=27 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=28 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=29 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=30 --heuristic-pool=all --population-size=10 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,10,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=2 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=3 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=4 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=5 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=6 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=7 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=8 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=9 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=10 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=11 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=12 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=13 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=14 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=15 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=16 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=17 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=18 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=19 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=20 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=21 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=22 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=23 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=24 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=25 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=26 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=27 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=28 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=29 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=30 --heuristic-pool=all --population-size=15 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,15,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=2 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=3 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=4 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=5 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=6 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=7 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=8 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=9 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=10 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=11 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=12 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=13 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=14 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=15 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=16 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=17 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=18 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=19 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=20 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=21 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=22 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=23 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=24 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=25 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=26 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=27 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=28 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=29 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=30 --heuristic-pool=all --population-size=20 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,20,30' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=1 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,1' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=2 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,2' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=3 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,3' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=4 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,4' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=5 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,5' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=6 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,6' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=7 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,7' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=8 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,8' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=9 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,9' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=10 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,10' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=11 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,11' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=12 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,12' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=13 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,13' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=14 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,14' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=15 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,15' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=16 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,16' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=17 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,17' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=18 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,18' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=19 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,19' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=20 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,20' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=21 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,21' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=22 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,22' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=23 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,23' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=24 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,24' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=25 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,25' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=26 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,26' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=27 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,27' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=28 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,28' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=29 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,29' >>tracking/progress/bhh_population.txt
python bhh.py --dataset=mushroom --seed=30 --heuristic-pool=all --population-size=25 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
echo 'bhh_population,mushroom,25,30' >>tracking/progress/bhh_population.txt
