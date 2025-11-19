# Ensures scikit-learn and matplotlib are installed in the Power BI environment
import pandas as pd
from sklearn.linear_model import LogisticRegression
import matplotlib.pyplot as plt

# Prepares Data (Converts Status to numeric target variables)

dataset['Is_Pell'] = dataset['pell_status'].apply(lambda x: 1 if x == 'Yes' else 0)

dataset['Is_Dropped'] = dataset['retention_status'].apply(lambda x: 1 if x == 'Dropped' else 0)

# Define Features (X) and Target (Y)

X = dataset[['first_time_pass_rate', 'Is_Pell']]
Y = dataset['Is_Dropped']

# Trains a simple Logistic Regression Model
# This step fits a line to predict drop likelihood based on pass rate and pell status.
model = LogisticRegression()
model.fit(X, Y)

# Predicts the probability of dropping 
drop_prob = model.predict_proba(X)

# --- Visualization (Uses Matplotlib for the output) ---

# Plots the relationship between Pass Rate and Drop Likelihood
plt.figure(figsize=(10, 6))
plt.scatter(dataset['first_time_pass_rate'], drop_prob[:, 1], 
            c=dataset['Is_Dropped'], cmap='coolwarm', alpha=0.7)

plt.xlabel("First Time Pass Rate (Feature)")
plt.ylabel("Predicted Drop Likelihood")
plt.title("Predicted Student Drop Risk (Logistic Regression)")
plt.colorbar(label='Actual Drop Status')
plt.grid(True, linestyle='--', alpha=0.6)
plt.show()