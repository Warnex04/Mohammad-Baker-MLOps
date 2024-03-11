import pandas as pd
import matplotlib.pyplot as plt

def load_housing_data():
    # Load the housing.csv file into a DataFrame
    return pd.read_csv('housing.csv')

def generate_statistics(df):
    # Generate various statistics from the DataFrame
    return df.describe()

def plot_statistics(df):
    # Plot some statistics and return the matplotlib figure
    fig, ax = plt.subplots()
    df['median_house_value'].hist(ax=ax)
    ax.set_title('Median House Value Distribution')
    return fig