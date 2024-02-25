#96 inputs and 192 predictions for exchange datasets
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/LongForecasting" ]; then
    mkdir ./logs/LongForecasting
fi

#set seq_len & pred_len
seq_len=96
pred_len=192

#run for all models
for model_name in Autoformer Informer Transformer ns_Transformer Linear DLinear
do 
#See run_longExp.py for a description of each parameter

  python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/exchange_rate/ \
    --data_path exchange_rate.csv \
    --model_id EXP1_Exchange_$seq_len'_'$pred_len \
    --model $model_name \
    --data custom \
    --features M \
    --seq_len $seq_len \
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
    --learning_rate 0.001 \
    --train_epochs 5 >logs/LongForecasting/$model_name'_EXP1_Exchange_'$pred_len.log
done


