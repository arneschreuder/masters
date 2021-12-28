export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=2
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,1' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,2' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,3' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,4' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,5' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,6' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,7' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,8' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,9' >>tracking_bhh_gd_only_log_all.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --log-level=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_log_all,iris,10' >>tracking_bhh_gd_only_log_all.txt
