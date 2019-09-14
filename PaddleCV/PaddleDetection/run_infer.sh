source `pwd`/set_env.sh
export CUDA_VISIBLE_DEVICES=4
export FLAGS_fraction_of_gpu_memory_to_use=0.3

export PYTHONPATH=`pwd`:$PYTHONPATH
#fluid -u tools/eval.py -c configs/blazeface.yml -o weights=output300x300_finetune_190902_190906_rmsprop/blazeface/50000 -d /home/users/yuehaixiao/workspace/data/WIDERFACE -f pred_output300x300_finetune_190902_190906_rmsprop_50000

fluid -u tools/infer.py -c configs/blazeface.yml --infer_dir /home/users/yuehaixiao/workspace/data/WIDERFACE/WIDER_val/images/53--Raid/ --save_inference_model
