export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=iris --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,iris,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=fish_toxicity --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,fish_toxicity,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=abalone --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,abalone,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=air_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,air_quality,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=housing --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,housing,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=wine_quality --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,wine_quality,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=car --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,car,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=parkinsons --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,parkinsons,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=forest_fires --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,forest_fires,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bank --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bank,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=bike --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,bike,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=student_performance --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,student_performance,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=adult --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,adult,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=mushroom --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,mushroom,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=ibest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,ibest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=pbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,pbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=rbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,rbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,gbest,10' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=1 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,1' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=2 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,2' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=3 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,3' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=4 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,4' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=5 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,5' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=6 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,6' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=7 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,7' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=8 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,8' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=9 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,9' >>tracking_bhh_gd_only_variant_credit.txt
python bhh.py --variant='gd_only' --dataset=diabetic --seed=10 --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=symmetric --discounted-rewards=true
echo 'bhh_gd_only_variant_credit,diabetic,symmetric,10' >>tracking_bhh_gd_only_variant_credit.txt
