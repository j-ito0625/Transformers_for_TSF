# figure4: look back window sizes - MSE
#Junsei Ito
#2024/01/02


if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/LongForecasting" ]; then
    mkdir ./logs/LongForecasting
fi

model_name=FEDformer
for seq_len in 48 72 96 120 144 168 192 336 504 672 720
do
  #exchange
  python -u run.py \
    --is_training 1 \
    --root_path ../dataset/BTC/ \
    --data_path exp2_china_57.csv \
    --task_id EXP2_CHINA_T720_L$seq_len \
    --model $model_name \
    --data custom \
    --features M \
    --seq_len $seq_len \
    --label_len 48 \
    --pred_len 720 \
    --factor 3 \
    --enc_in 67 \
    --dec_in 67 \
    --c_out 67 \
    --des 'Exp' \
    --itr 1 \
    --batch_size 8 \
    --learning_rate 0.0001 \
    --train_epochs 1 >logs/LongForecasting/$model_name'_EXP2_CHINA_'$pred_len.log
done  
