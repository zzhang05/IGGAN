# IGGAN 


To train IGGAN on the unconditional CIFAR-10 dataset, run the following 
```
bash train_C10.sh
```

If your environment does not consist of the bash command, please copy the contents in the file train_C10.sh, run the following
```
python3 train_aug.py --augment --shuffle --batch_size 64 --parallel --num_G_accumulations 1 --num_D_accumulations 1 --num_epochs 2000 --num_D_steps 4 --G_lr 2e-4 --D_lr 2e-4 --dataset C10U --data_root ./data/ --G_ortho 0.0 --G_attn 0 --D_attn 0 --G_init N02 --D_init N02 --ema --use_ema --ema_start 1000 --start_eval 50 --test_every 1000 --save_every 1000 --num_best_copies 5 --num_save_copies 2 --loss_type hinge --seed 2 --which_best FID --model BigGAN_new --alpha 0.25 --beta 0.75 --experiment_name jigsaw_C10U
```

To train IGGAN on the conditional CIFAR-10 dataset, run the following
```
bash train_C10_cond.sh
```

If your environment does not consist of the bash command, please copy the contents in the file train_C10_cond.sh, run the following
```
python train_aug.py --shuffle --batch_size 64 --parallel --num_G_accumulations 1 --num_D_accumulations 1 --num_epochs 2000 --num_D_steps 4 --G_lr 2e-4 --D_lr 2e-4 --dataset C10 --data_root ./data/ --G_ortho 0.0 --G_attn 0 --D_attn 0 --G_init N02 --D_init N02 --ema --use_ema --ema_start 1000 --start_eval 50 --test_every 1000 --save_every 1000 --num_best_copies 5 --num_save_copies 2 --loss_type hinge --seed 2 --which_best FID --model BigGAN_new --alpha 0.25 --beta 0.75 --experiment_name jigsaw_C10_cond --conditional
```

It takes about three or four days to finish the training on a single GPU. You can also adjust the config in the above comments when you fully understand the codes. The different configurations may influence the performance.