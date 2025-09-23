
CREATE TABLE IF NOT EXISTS"civicrm_donor_types_counts_kestra" (
  "id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (
    sequence name "civicrm_donor_types_counts_kestra_id_seq"
  ),
  "timestamp" timestamp NOT NULL,
  "donor_type_none" integer NOT NULL,
  "donor_type_monthly" integer NOT NULL,
  "donor_type_one_time" integer NOT NULL,
  "donor_type_past" integer NOT NULL
);