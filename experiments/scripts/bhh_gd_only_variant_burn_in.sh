export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,iris,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,fish_toxicity,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,abalone,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,air_quality,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,housing,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,wine_quality,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,car,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,parkinsons,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,forest_fires,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bank,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,bike,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,student_performance,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,adult,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,mushroom,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,0,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=10 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,10,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=20 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,20,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=50 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,50,10' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,1' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,2' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,3' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,4' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,5' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,6' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,7' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,8' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,9' >>tracking_bhh_gd_only_variant_burn_in.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=100 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_burn_in,diabetic,100,10' >>tracking_bhh_gd_only_variant_burn_in.txt
