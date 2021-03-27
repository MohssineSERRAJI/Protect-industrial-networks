import tensorflow as tf
from keras.models import load_model
import numpy as np
import pandas as pd
from sklearn.preprocessing import MinMaxScaler
from preprocessing import preprocess_data_to_prediction
import pickle

BASE_PATH = "./model_assets/"


class myModel():
    def __init__(self, model_name, list_path=BASE_PATH+"attacks_list.obj"):
        self.name = model_name
        self.attacks_list = load_attacks_list(list_path)

    def load_model(self, model_path=BASE_PATH+"best_model"):
        self.model = load_model(model_path)

    def predict(self, data):
        data = preprocess_data_to_prediction(data)
        Y_predicted = self.model.predict_classes(data)
        df_count = pd.Series(Y_predicted)
        result = df_count.value_counts()
        # convert integers to labels string
        labels = {}
        for i in range(len(self.attacks_list)):
            if i in result.keys():
                labels[str(self.attacks_list[i])] = str(result[i])
            else:
                labels[str(self.attacks_list[i])] = str(0)
        del labels["Normal"]
        nbr_attacks = sum([int(x) for x in labels.values()])
        return labels, nbr_attacks


def load_attacks_list(list_path="attacks_list.obj"):
    with open(list_path, 'rb') as fh:
        attacks_list = pickle.load(fh)
    return attacks_list
