import os
import random
import polars as pl 
from faker import Faker
from dotenv import load_dotenv

load_dotenv()

# contact ids
n_contacts = int(os.getenv('N_CONTACTS'))
contact_ids = range(1, n_contacts + 1)
n_contributions = 3502

fake = Faker("de_DE")
Faker.seed(os.getenv('SEED'))


contacts = {
    "Vorname" : [fake.first_name() for _ in range(n_contacts)],
    "Nachname" : [fake.last_name() for _ in range(n_contacts)],
    "E-Mail": [fake.email() for _ in range(n_contacts)],
    "Straße" : [fake.street_address() for _ in range(n_contacts)],
    "Postleitzahl" : [fake.postcode() for _ in range(n_contacts)],
    "Ort" : [fake.city_name() for _ in range(n_contacts)],
    "Land":  ["Deutschland" for _ in range(n_contacts)],
    "Bundesland" : [fake.state() for _ in range(n_contacts)],
    "Geburtsdatum" : [fake.date_of_birth(minimum_age=18, maximum_age=96) for _ in range(n_contacts)],
    "Geschlecht" : [random.choices(["Weiblich", "Männlich", "Nichtbinär / Nonbinary", "Agender", "Keine Angabe"], [0.4, 0.4, 0.06, 0.02, 0.02])[0] for _ in range(n_contacts)],
    "Externe ID" : contact_ids
}

# Create a Polars DataFrame
df = pl.DataFrame(contacts)

# Write the DataFrame to a CSV file
df.write_csv("contacts.csv")