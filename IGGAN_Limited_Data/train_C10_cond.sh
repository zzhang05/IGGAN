python3 train_aug.py --augment --shuffle --batch_size 25 --parallel --num_G_accumulations 1 --num_D_accumulations 1 --num_epochs 2000 --num_samples 5000 --num_D_steps 4 --G_lr 2e-4 --D_lr 2e-4 --dataset C10 --data_root ./data/ --G_ortho 0.0 --G_attn 0 --D_attn 0 --G_init N02 --D_init N02 --ema --use_ema --ema_start 1000 --start_eval 50 --test_every 1000 --save_every 1000 --num_best_copies 5 --num_save_copies 2 --loss_type hinge --seed 2 --which_best FID --model BigGAN_new --alpha 0.25 --beta 0.75 --experiment_name cutmix_C10 --conditional
