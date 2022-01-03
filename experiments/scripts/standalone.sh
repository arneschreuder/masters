export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=''
export LOG_LEVEL=0
python heuristic.py --dataset=iris --optimiser=sgd --seed=1
echo 'standalone,iris,sgd,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=momentum --seed=1
echo 'standalone,iris,momentum,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=nag --seed=1
echo 'standalone,iris,nag,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=adagrad --seed=1
echo 'standalone,iris,adagrad,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=rmsprop --seed=1
echo 'standalone,iris,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=adadelta --seed=1
echo 'standalone,iris,adadelta,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=adam --seed=1
echo 'standalone,iris,adam,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=pso --seed=1
echo 'standalone,iris,pso,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=de --seed=1
echo 'standalone,iris,de,1' >> standalone.txt
python heuristic.py --dataset=iris --optimiser=ga --seed=1
echo 'standalone,iris,ga,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=sgd --seed=1
echo 'standalone,abalone,sgd,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=momentum --seed=1
echo 'standalone,abalone,momentum,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=nag --seed=1
echo 'standalone,abalone,nag,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=adagrad --seed=1
echo 'standalone,abalone,adagrad,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=rmsprop --seed=1
echo 'standalone,abalone,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=adadelta --seed=1
echo 'standalone,abalone,adadelta,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=adam --seed=1
echo 'standalone,abalone,adam,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=pso --seed=1
echo 'standalone,abalone,pso,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=de --seed=1
echo 'standalone,abalone,de,1' >> standalone.txt
python heuristic.py --dataset=abalone --optimiser=ga --seed=1
echo 'standalone,abalone,ga,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=sgd --seed=1
echo 'standalone,housing,sgd,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=momentum --seed=1
echo 'standalone,housing,momentum,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=nag --seed=1
echo 'standalone,housing,nag,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=adagrad --seed=1
echo 'standalone,housing,adagrad,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=rmsprop --seed=1
echo 'standalone,housing,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=adadelta --seed=1
echo 'standalone,housing,adadelta,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=adam --seed=1
echo 'standalone,housing,adam,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=pso --seed=1
echo 'standalone,housing,pso,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=de --seed=1
echo 'standalone,housing,de,1' >> standalone.txt
python heuristic.py --dataset=housing --optimiser=ga --seed=1
echo 'standalone,housing,ga,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=sgd --seed=1
echo 'standalone,forest_fires,sgd,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=momentum --seed=1
echo 'standalone,forest_fires,momentum,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=nag --seed=1
echo 'standalone,forest_fires,nag,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=adagrad --seed=1
echo 'standalone,forest_fires,adagrad,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=rmsprop --seed=1
echo 'standalone,forest_fires,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=adadelta --seed=1
echo 'standalone,forest_fires,adadelta,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=adam --seed=1
echo 'standalone,forest_fires,adam,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=pso --seed=1
echo 'standalone,forest_fires,pso,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=de --seed=1
echo 'standalone,forest_fires,de,1' >> standalone.txt
python heuristic.py --dataset=forest_fires --optimiser=ga --seed=1
echo 'standalone,forest_fires,ga,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=sgd --seed=1
echo 'standalone,fish_toxicity,sgd,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=momentum --seed=1
echo 'standalone,fish_toxicity,momentum,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=nag --seed=1
echo 'standalone,fish_toxicity,nag,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=adagrad --seed=1
echo 'standalone,fish_toxicity,adagrad,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=rmsprop --seed=1
echo 'standalone,fish_toxicity,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=adadelta --seed=1
echo 'standalone,fish_toxicity,adadelta,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=adam --seed=1
echo 'standalone,fish_toxicity,adam,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=pso --seed=1
echo 'standalone,fish_toxicity,pso,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=de --seed=1
echo 'standalone,fish_toxicity,de,1' >> standalone.txt
python heuristic.py --dataset=fish_toxicity --optimiser=ga --seed=1
echo 'standalone,fish_toxicity,ga,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=sgd --seed=1
echo 'standalone,student_performance,sgd,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=momentum --seed=1
echo 'standalone,student_performance,momentum,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=nag --seed=1
echo 'standalone,student_performance,nag,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=adagrad --seed=1
echo 'standalone,student_performance,adagrad,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=rmsprop --seed=1
echo 'standalone,student_performance,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=adadelta --seed=1
echo 'standalone,student_performance,adadelta,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=adam --seed=1
echo 'standalone,student_performance,adam,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=pso --seed=1
echo 'standalone,student_performance,pso,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=de --seed=1
echo 'standalone,student_performance,de,1' >> standalone.txt
python heuristic.py --dataset=student_performance --optimiser=ga --seed=1
echo 'standalone,student_performance,ga,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=sgd --seed=1
echo 'standalone,car,sgd,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=momentum --seed=1
echo 'standalone,car,momentum,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=nag --seed=1
echo 'standalone,car,nag,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=adagrad --seed=1
echo 'standalone,car,adagrad,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=rmsprop --seed=1
echo 'standalone,car,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=adadelta --seed=1
echo 'standalone,car,adadelta,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=adam --seed=1
echo 'standalone,car,adam,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=pso --seed=1
echo 'standalone,car,pso,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=de --seed=1
echo 'standalone,car,de,1' >> standalone.txt
python heuristic.py --dataset=car --optimiser=ga --seed=1
echo 'standalone,car,ga,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=sgd --seed=1
echo 'standalone,parkinsons,sgd,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=momentum --seed=1
echo 'standalone,parkinsons,momentum,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=nag --seed=1
echo 'standalone,parkinsons,nag,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=adagrad --seed=1
echo 'standalone,parkinsons,adagrad,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=rmsprop --seed=1
echo 'standalone,parkinsons,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=adadelta --seed=1
echo 'standalone,parkinsons,adadelta,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=adam --seed=1
echo 'standalone,parkinsons,adam,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=pso --seed=1
echo 'standalone,parkinsons,pso,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=de --seed=1
echo 'standalone,parkinsons,de,1' >> standalone.txt
python heuristic.py --dataset=parkinsons --optimiser=ga --seed=1
echo 'standalone,parkinsons,ga,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=sgd --seed=1
echo 'standalone,wine_quality,sgd,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=momentum --seed=1
echo 'standalone,wine_quality,momentum,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=nag --seed=1
echo 'standalone,wine_quality,nag,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=adagrad --seed=1
echo 'standalone,wine_quality,adagrad,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=rmsprop --seed=1
echo 'standalone,wine_quality,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=adadelta --seed=1
echo 'standalone,wine_quality,adadelta,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=adam --seed=1
echo 'standalone,wine_quality,adam,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=pso --seed=1
echo 'standalone,wine_quality,pso,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=de --seed=1
echo 'standalone,wine_quality,de,1' >> standalone.txt
python heuristic.py --dataset=wine_quality --optimiser=ga --seed=1
echo 'standalone,wine_quality,ga,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=sgd --seed=1
echo 'standalone,mushroom,sgd,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=momentum --seed=1
echo 'standalone,mushroom,momentum,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=nag --seed=1
echo 'standalone,mushroom,nag,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=adagrad --seed=1
echo 'standalone,mushroom,adagrad,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=rmsprop --seed=1
echo 'standalone,mushroom,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=adadelta --seed=1
echo 'standalone,mushroom,adadelta,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=adam --seed=1
echo 'standalone,mushroom,adam,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=pso --seed=1
echo 'standalone,mushroom,pso,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=de --seed=1
echo 'standalone,mushroom,de,1' >> standalone.txt
python heuristic.py --dataset=mushroom --optimiser=ga --seed=1
echo 'standalone,mushroom,ga,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=sgd --seed=1
echo 'standalone,air_quality,sgd,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=momentum --seed=1
echo 'standalone,air_quality,momentum,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=nag --seed=1
echo 'standalone,air_quality,nag,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=adagrad --seed=1
echo 'standalone,air_quality,adagrad,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=rmsprop --seed=1
echo 'standalone,air_quality,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=adadelta --seed=1
echo 'standalone,air_quality,adadelta,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=adam --seed=1
echo 'standalone,air_quality,adam,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=pso --seed=1
echo 'standalone,air_quality,pso,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=de --seed=1
echo 'standalone,air_quality,de,1' >> standalone.txt
python heuristic.py --dataset=air_quality --optimiser=ga --seed=1
echo 'standalone,air_quality,ga,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=sgd --seed=1
echo 'standalone,adult,sgd,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=momentum --seed=1
echo 'standalone,adult,momentum,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=nag --seed=1
echo 'standalone,adult,nag,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=adagrad --seed=1
echo 'standalone,adult,adagrad,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=rmsprop --seed=1
echo 'standalone,adult,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=adadelta --seed=1
echo 'standalone,adult,adadelta,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=adam --seed=1
echo 'standalone,adult,adam,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=pso --seed=1
echo 'standalone,adult,pso,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=de --seed=1
echo 'standalone,adult,de,1' >> standalone.txt
python heuristic.py --dataset=adult --optimiser=ga --seed=1
echo 'standalone,adult,ga,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=sgd --seed=1
echo 'standalone,bike,sgd,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=momentum --seed=1
echo 'standalone,bike,momentum,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=nag --seed=1
echo 'standalone,bike,nag,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=adagrad --seed=1
echo 'standalone,bike,adagrad,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=rmsprop --seed=1
echo 'standalone,bike,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=adadelta --seed=1
echo 'standalone,bike,adadelta,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=adam --seed=1
echo 'standalone,bike,adam,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=pso --seed=1
echo 'standalone,bike,pso,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=de --seed=1
echo 'standalone,bike,de,1' >> standalone.txt
python heuristic.py --dataset=bike --optimiser=ga --seed=1
echo 'standalone,bike,ga,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=sgd --seed=1
echo 'standalone,bank,sgd,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=momentum --seed=1
echo 'standalone,bank,momentum,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=nag --seed=1
echo 'standalone,bank,nag,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=adagrad --seed=1
echo 'standalone,bank,adagrad,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=rmsprop --seed=1
echo 'standalone,bank,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=adadelta --seed=1
echo 'standalone,bank,adadelta,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=adam --seed=1
echo 'standalone,bank,adam,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=pso --seed=1
echo 'standalone,bank,pso,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=de --seed=1
echo 'standalone,bank,de,1' >> standalone.txt
python heuristic.py --dataset=bank --optimiser=ga --seed=1
echo 'standalone,bank,ga,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=sgd --seed=1
echo 'standalone,diabetic,sgd,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=momentum --seed=1
echo 'standalone,diabetic,momentum,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=nag --seed=1
echo 'standalone,diabetic,nag,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=adagrad --seed=1
echo 'standalone,diabetic,adagrad,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=rmsprop --seed=1
echo 'standalone,diabetic,rmsprop,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=adadelta --seed=1
echo 'standalone,diabetic,adadelta,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=adam --seed=1
echo 'standalone,diabetic,adam,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=pso --seed=1
echo 'standalone,diabetic,pso,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=de --seed=1
echo 'standalone,diabetic,de,1' >> standalone.txt
python heuristic.py --dataset=diabetic --optimiser=ga --seed=1
echo 'standalone,diabetic,ga,1' >> standalone.txt
