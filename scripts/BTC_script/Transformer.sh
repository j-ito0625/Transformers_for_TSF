# for learning_rate in 0.01 0.001 
# do 
learning_rate=0.000030 
#0.0001 0.00001 0.000001 0.0000001 0.00000001

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/BTC/ \
  --data_path order_book_3_2014_new_1_2_UP_cut96.csv \
  --model_id BTC_UP_96_96_batch16_$learning_rate \
  --model Transformer \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --gpu 0 \
  --enc_in 67 \
  --dec_in 67 \
  --c_out 67 \
  --batch_size 8 \
  --des 'Exp' \
  --do_predict  \
  --learning_rate $learning_rate \
  --itr 1 &

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/electricity/ \
#   --data_path electricity.csv \
#   --model_id ECL_96_192 \
#   --model Transformer \
#   --data custom \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 192 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --gpu 5 \
#   --enc_in 321 \
#   --dec_in 321 \
#   --c_out 321 \
#   --des 'Exp' \
#   --itr 1 &

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/electricity/ \
#   --data_path electricity.csv \
#   --model_id ECL_96_336 \
#   --model Transformer \
#   --data custom \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 336 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --gpu 6 \
#   --enc_in 321 \
#   --dec_in 321 \
#   --c_out 321 \
#   --des 'Exp' \
#   --itr 1 &

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/electricity/ \
#   --data_path electricity.csv \
#   --model_id ECL_96_720 \
#   --model Transformer \
#   --data custom \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 720 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --gpu 7 \
#   --enc_in 321 \
#   --dec_in 321 \
#   --c_out 321 \
#   --des 'Exp' \
#   --itr 1 &
