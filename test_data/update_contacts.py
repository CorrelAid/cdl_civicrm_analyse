import polars as pl
import random
from datetime import datetime
from gen_contacts import valid_dt

# 1. Read the existing CSV
df = pl.read_csv("contacts.csv")

# 2. Build a donor_type list of the same length as the DataFrame
n_contacts = df.height  # Polars property for number of rows
donor_types = [random.choice(valid_dt) for _ in range(n_contacts)]

# 3. Convert the Python list to a Polars Series
donor_series = pl.Series("Donor Type", donor_types)

# 4. Add the new column
df = df.with_columns(donor_series)

print(df)

# 5. Write out the updated DataFrame, using a safe timestamp format
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
output_path = f"contacts_updated_{timestamp}.csv"
df.write_csv(output_path)

print(f"Written updated contacts to {output_path}")
