import pickle
import tensorflow as tf
from keras.models import load_model
import numpy as np
import pandas as pd
from sklearn.preprocessing import MinMaxScaler

base_path = './model_assets/'


def load_n_rows(file_path='file_to_check_CNN.csv', n=300):
    data = pd.read_csv(file_path)
    data = data.sample(n)
    return data


def load_lists_objs():
    # load objects lists of .....
    with open(base_path + 'proto_list.obj', 'rb') as fh:
        proto_list = pickle.load(fh)
    with open(base_path + 'state_list.obj', 'rb') as fh:
        state_list = pickle.load(fh)
    with open(base_path + 'service_list.obj', 'rb') as fh:
        service_list = pickle.load(fh)
    with open(base_path + 'attacks_list.obj', 'rb') as fh:
        attacks_list = pickle.load(fh)
    return proto_list, state_list, service_list, attacks_list


def preprocess_data_to_prediction(data):
    """
      This function used to preprocess you data and prepare it for the model to make 
      prediction
      args : 
        data : data to process 
      retrun :
        retrun a preprocessed dataframe ready for prediction
    """
    # delete data that we dont need
    data = data.drop(['srcip', 'sport', 'dstip', 'dsport'], axis=1)
    # Change dtype of ct_ftp_cmd feauture
    # replace spaces by 0
    data['ct_ftp_cmd'] = data['ct_ftp_cmd'].replace(' ', 0)
    data = data.astype({'ct_ftp_cmd': 'int64'})  # change type
    #### Encode feautures #####
    proto_list, state_list, service_list, attacks_list = load_lists_objs()
    data['proto'] = data['proto'].apply(lambda x: proto_list.index(x))
    data['state'] = data['state'].apply(lambda x: state_list.index(x))
    data['service'] = data['service'].apply(lambda x: service_list.index(x))
    #### Encode labels #####
    ###########################
    ## Normalisation of data ##
    scaler = MinMaxScaler()
    # Compute the minimum and maximum to be used for later scaling.
    scaler.fit(data)
    # print(data.head())
    # , columns=data.columns)
    transformed_data = pd.DataFrame(scaler.fit_transform(data))

    return transformed_data


def load_n_rows(file_path='file_to_check_CNN.csv', n=300):
    data = pd.read_csv(file_path)
    data = data.sample(n)
    return data
