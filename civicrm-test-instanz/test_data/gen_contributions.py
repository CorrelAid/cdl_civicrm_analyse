import os
import random
import polars as pl 
from faker import Faker
from datetime import datetime
from dotenv import load_dotenv

load_dotenv()

# contact ids
n_contacts = int(os.getenv('N_CONTACTS'))
contact_ids = range(1, n_contacts + 1)
n_contributions = int(os.getenv('N_CONTRIBUTIONS'))

fake = Faker("de_DE")
Faker.seed(os.getenv('SEED'))

contributions = {
    "Zuwendungsart" : [random.choice(["Donation", "Member Dues", "Campaign Contribution", "Event Fee"]) for _ in range(n_contributions)],
    "Gesamtbetrag" : [random.randrange(1, 1000, 1) for _ in range(n_contributions)],
    "Zuwendungsdatum" : [fake.date_between(datetime(2020, 1, 1), datetime(2025, 8, 1)) for _ in range(n_contributions)],
    "Zahlungsmethode" : [random.choice(["Credit Card", "Debit Card", "Cash", "Check", "EFT"]) for _ in range(n_contributions)],
    "Externe ID" : [random.choice(contact_ids) for _ in range(n_contributions)]
}

# Create a Polars DataFrame
df = pl.DataFrame(contributions)

# Write the DataFrame to a CSV file
df.write_csv("contributions.csv")