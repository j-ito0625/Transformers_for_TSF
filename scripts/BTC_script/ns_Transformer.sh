
# for learning_rate in 0.01 0.001 
# do 

# seq_len=192

learning_rate=0.000010 
#0.0001 0.00001 0.000001 0.0000001 0.00000001
#48 72 96 120 144 168 192 336 504 672 720
model_name=ns_Transformer
for seq_len in 48 72 96 120 144 168 192 336 504 672 720
do
  python -u run.py \
    --is_training 1 \
    --root_path ./dataset/BTC/ \
    --data_path exp2_china_57.csv \
    --model_id exp2_lookback_china_0.000010_$seq_len \
    --model $model_name \
    --data custom \
    --features M \
    --seq_len $seq_len \
    --label_len 48 \
    --pred_len 720 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 67 \
    --dec_in 67 \
    --c_out 67 \
    --batch_size 8 \
    --gpu 0 \
    --des 'Exp_h256_l2' \
    --p_hidden_dims 128 128 \
    --p_hidden_layers 2 \
    --learning_rate $learning_rate \
    --train_epochs 1 \
    --itr 1 
done

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/BTC/ \
#   --data_path BTC_test.csv \
#   --model_id BTC_96_192 \
#   --model ns_Transformer \
#   --data custom \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 192 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 6 \
#   --dec_in 6 \
#   --c_out 6 \
#   --gpu 1 \
#   --des 'Exp_h128_l2' \
#   --p_hidden_dims 128 128 \
#   --p_hidden_layers 2 \
#   --itr 1 &





# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/BTC/ \
#   --data_path BTC_test.csv \
#   --model_id BTC_96_336 \
#   --model ns_Transformer \
#   --data custom \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 336 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 6 \
#   --dec_in 6 \
#   --c_out 6 \
#   --gpu 2 \
#   --des 'Exp_h128_l2' \
#   --p_hidden_dims 128 128 \
#   --p_hidden_layers 2 \
#   --itr 1 &

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/BTC/ \
#   --data_path BTC_test.csv \
#   --model_id BTC_96_720 \
#   --model ns_Transformer \
#   --data custom \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 720 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 6 \
#   --dec_in 6 \
#   --c_out 6 \
#   --gpu 3 \
#   --des 'Exp_h128_l2' \
#   --p_hidden_dims 128 128 \
#   --p_hidden_layers 2 \
#   --itr 1 &
