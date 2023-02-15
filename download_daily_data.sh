python livestreamtest.py \
    --scrip=NSE:NIFTY \
    --num_candles=300

python livestreamtest.py \
    --scrip=NSE:BANKNIFTY \
    --num_candles=300

cd NSE:NIFTY && dvc add *.csv && cd ..
cd NSE:BANKNIFTY && dvc add *.csv && cd ..
git add .
git commit -m "Add new data"
git push