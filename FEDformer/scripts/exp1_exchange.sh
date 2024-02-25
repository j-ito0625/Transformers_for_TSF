# ALL scripts in this file come from Autoformer
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/LongForecasting" ]; then
    mkdir ./logs/LongForecasting
fi


model_name=FEDformer
pred_len=192
  python -u run.py \
    --is_training 1 \
    --root_path ../dataset/exchange_rate/ \
    --data_path exchange_rate_pred.csv \
    --task_id EXP1_Exchange_96_$pred_len \
    --model $model_name \
    --data custom \
    --features M \
    --seq_len 96 \
    --label_len 48 \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --itr 1 \
    --do_predict  \
    --batch_size 8 \
    --learning_rate 0.0001 \
    --train_epochs 10 >logs/LongForecasting/$model_name'_CHINA2014_'$pred_len.log

