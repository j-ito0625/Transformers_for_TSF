# figure4: look back window sizes - MSE
#Junsei Ito
#2024/01/02


if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/LongForecasting" ]; then
    mkdir ./logs/LongForecasting
fi

for model_name in Autoformer Informer Transformer Linear DLinear Ns_Transformer
do 
for seq_len in 48 72 96 120 144 168 192 336 504 672 720
do
  #etth2
  python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ETT-small/ \
    --data_path ETTh2.csv \
    --model_id EXP2_ETTh2_T720_L$seq_len \
    --model $model_name \
    --data custom \
    --features M \
    --label_len 48 \
    --pred_len 720 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --itr 1 \
    --batch_size 8 \
    --learning_rate 0.0001 \
    --train_epochs 5 >logs/LongForecasting/$model_name'_EXP2_ETTh2_'$pred_len.log
done
done  
