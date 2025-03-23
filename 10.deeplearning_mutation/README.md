# 10. Deep learning model for sequence prediction and in silico mutagenesis prediction

- We adopted the Basenji neural network architecture to predict open chromatin accessibility. We used the same model structure with modifications to do the raw prediction, replacement mutation prediction and deletion mutation prediction.
- 1. Download the sample data and pre trained model from [data](https://drive.google.com/drive/folders/1cqnBanRL_8eTUWCaxXPrk_xY8A31SJgV?usp=sharing) and put them into the folder 10.deeplearning_mutation/utils
- 2. Data process. Please refer to the 01.dataprocess.ipynb and tutorial of [Basenji](https://github.com/calico/basenji) to process your own data
- 3. Train the model with your data according to the tutorial of [Basenji](https://github.com/calico/basenji)
- 4. In silico mutagenesis. Please refer to the 02.insilico_mutation.sh and tutorial of [Basenji](https://github.com/calico/basenji) to get your own result