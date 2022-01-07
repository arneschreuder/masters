export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0

python heuristic.py --dataset=diabetic --optimiser=ga --seed=11
echo 'standalone,diabetic,ga,11' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=12
echo 'standalone,diabetic,ga,12' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=13
echo 'standalone,diabetic,ga,13' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=14
echo 'standalone,diabetic,ga,14' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=15
echo 'standalone,diabetic,ga,15' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=16
echo 'standalone,diabetic,ga,16' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=17
echo 'standalone,diabetic,ga,17' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=18
echo 'standalone,diabetic,ga,18' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=19
echo 'standalone,diabetic,ga,19' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=20
echo 'standalone,diabetic,ga,20' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=21
echo 'standalone,diabetic,ga,21' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=22
echo 'standalone,diabetic,ga,22' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=23
echo 'standalone,diabetic,ga,23' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=24
echo 'standalone,diabetic,ga,24' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=25
echo 'standalone,diabetic,ga,25' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=26
echo 'standalone,diabetic,ga,26' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=27
echo 'standalone,diabetic,ga,27' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=28
echo 'standalone,diabetic,ga,28' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=29
echo 'standalone,diabetic,ga,29' >>tracking/progress/standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=30
echo 'standalone,diabetic,ga,30' >>tracking/progress/standalone.txt
