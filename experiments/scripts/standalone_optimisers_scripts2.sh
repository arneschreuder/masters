export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python heuristic.py --dataset=bank --optimiser=pso --seed=1
echo 'standalone,bank,pso,1' >>tracking_standalone.txt
python heuristic.py --dataset=bank --optimiser=de --seed=1
echo 'standalone,bank,de,1' >>tracking_standalone.txt
python heuristic.py --dataset=bank --optimiser=ga --seed=1
echo 'standalone,bank,ga,1' >>tracking_standalone.txt
