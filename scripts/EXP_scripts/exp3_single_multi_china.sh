seq_len=96
learning_rate=0.00010 

model_name=ns_Transformer
for features in S M
do
  python -u run.py \
  --is_training 1 \
  --root_path ./dataset/BTC/ \
  --data_path exp_3_china_single_pred.csv \
  --model_id exp3_singlle_china_96_96 \
  --model $model_name \
  --data custom \
  --features $features \
  --seq_len $seq_len \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --batch_size 1 \
  --gpu 0 \
  --des 'Exp_h256_l2' \
  --p_hidden_dims 256 256 \
  --p_hidden_layers 2 \
  --learning_rate $learning_rate \
  --do_predict \
  --itr 1 &
done
