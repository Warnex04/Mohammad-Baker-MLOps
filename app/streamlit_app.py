import streamlit as st
from housing_data import load_housing_data, generate_statistics, plot_statistics

def main():
    st.title('Housing Statistics Dashboard')

    # Load housing data
    housing_df = load_housing_data()

    # Generate statistics
    stats = generate_statistics(housing_df)

    # Display statistics
    st.write(stats)

    # Plot statistics
    fig = plot_statistics(housing_df)
    st.pyplot(fig)

if __name__ == "__main__":
    main()